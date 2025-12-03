import os
import django
from urllib.parse import urljoin
import re
import asyncio
import json

# === Cargar settings de Django ===
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myproject.settings")
django.setup()

# === Cargar modelos después de setup() ===
from django.apps import apps
Producto = apps.get_model('core', 'Producto')
Marca = apps.get_model('core', 'Marca')
Categoria = apps.get_model('core', 'Categoria')
UrlTienda = apps.get_model('core', 'UrlTienda')

from playwright.async_api import async_playwright

HEADLESS = True

def parse_price(text):
    digits = re.sub(r"\D+", "", text or "")
    return int(digits) if digits else None


async def scrape_falabella(url, brand):
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=HEADLESS)
        page = await browser.new_page()

        print(f"🕒 Cargando página: {url}")
        await page.goto(url, timeout=90000)

        try:
            await page.wait_for_selector("a[href*='/falabella-cl/product/']", timeout=60000)
        except:
            print("⚠ No se encontraron productos en esta categoría")
            await browser.close()
            return []

        await page.wait_for_timeout(2000)

        cards = await page.query_selector_all("a[href*='/falabella-cl/product/']")
        print(f"🔍 Detectadas {len(cards)} tarjetas")

        base = "https://www.falabella.com/falabella-cl"
        products = []

        for a in cards:
            href = await a.get_attribute("href")
            full_text = " ".join((await a.inner_text()).split() if await a.inner_text() else "")

            if not href or not full_text:
                continue

            url_abs = urljoin(base, href)

            # IMAGEN
            img = await a.query_selector("img")
            img_src = await img.get_attribute("src") if img else None
            if not img_src or not img_src.startswith("http"):
                continue

            # PRECIO
            price_el = await a.query_selector("span:has-text('$')")
            price = parse_price(await price_el.inner_text()) if price_el else None
            if not price:
                continue

            # NOMBRE
            name_clean = full_text.split("$", 1)[0].strip()

            products.append({
                "name": name_clean,
                "price": price,
                "brand": brand,
                "category": "Tecnología", 
                "url": url_abs,
                "image": img_src,
            })

        await browser.close()
        return products



def guardar_en_bd(productos):
    creados = 0
    actualizados = 0

    for p in productos:

        categoria_obj, _ = Categoria.objects.get_or_create(
            nombre_categoria="Tecnología"
        )

        marca_obj, _ = Marca.objects.get_or_create(
            nombre_marca=p["brand"]
        )

        url_existente = UrlTienda.objects.filter(url=p["url"]).first()

        if url_existente:
            prod = url_existente.producto
            prod.nombre_producto = p["name"]
            prod.precio = p["price"]
            prod.imagen = p["image"]
            prod.id_categoria = categoria_obj
            prod.id_marca = marca_obj
            prod.save()
            actualizados += 1
            continue

        producto = Producto.objects.create(
            nombre_producto=p["name"],
            descripcion=f"[Falabella] {p['name']}",
            precio=p["price"],
            imagen=p["image"],
            id_categoria=categoria_obj,
            id_marca=marca_obj,
            url=p["url"],
        )

        UrlTienda.objects.create(
            producto=producto,
            url=p["url"],
            nombre_tienda="Falabella",
            es_principal=True,
            activo=True,
        )

        creados += 1

    print(f"💾 {creados} nuevos, {actualizados} actualizados.")



# === CATEGORÍAS FINALES ===
URLS = [
    # Consolas Sony
    {
        "url": "https://www.falabella.com/falabella-cl/category/cat202303/Consolas?f.product.brandName=sony",
        "brand": "Sony",
    },

    # Perfumes HOMBRE
    {
        "url": "https://www.falabella.com/falabella-cl/category/cat70057/Perfumes-Hombre",
        "brand": "Genérico",
    },

    # Perfumes MUJER
    {
        "url": "https://www.falabella.com/falabella-cl/category/cat70056/Perfumes-Mujer",
        "brand": "Genérico",
    },
]


# === EJECUCIÓN ===
if __name__ == "__main__":
    for u in URLS:
        productos = asyncio.run(scrape_falabella(u["url"], u["brand"]))
        print(f"\n✅ Encontrados {len(productos)} productos válidos\n")
        guardar_en_bd(productos)

    print("\n🎉 SCRAPER COMPLETADO SIN ERRORES\n")
