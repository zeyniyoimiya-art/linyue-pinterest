#!/bin/bash
# Empaqueta un lote (o todo) en un ZIP conservando los bytes originales.
# Las imágenes NO se recomprimen ni se re-guardan: compresión "store" (sin deflate).
set -euo pipefail
cd "$(dirname "$0")"
OUT="${1:-linyue-pinterest-$(date +%Y%m%d-%H%M).zip}"
echo "→ Creando $OUT (store, sin recomprimir)…"
zip -X -0 -r "$OUT" README.md CLINE_INSTRUCCIONES.md ETIQUETAS.md VERIFICACION_TEMAS.md PIN_TEMPLATE.md MASTER_INDEX.csv pinterest_interests_oficial.json lote_*/
echo "✔ Listo. Checksums:"
find . -path ./"$OUT" -prune -o -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) -print0 | sort -z | xargs -0 sha256sum
echo "(Guarda estas sumas para comprobar que las imágenes no cambiaron ni un bit.)"
