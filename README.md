# Lin Yue — Autopilot Pinterest 🌿
## Sistema de publicación en lote (Arena.ai Battle → tú → Cline → Pinterest)

Este workspace es la **fuente única de verdad** para toda la línea de pines de Lin Yue.

### Flujo

```
1. Generas imágenes en Arena.ai Battle Mode
2. Me pasas los archivos (chat o carpeta)
3. Yo: renombro + creo el .md gemelo con título, descripción, tablero, enlace y temas etiquetados
4. Actualizo MASTER_INDEX.csv
5. Al final: /empaquetar.sh genera el ZIP — byte a byte, CERO recodificación = cero pérdida de calidad
6. Cline (con su conector Pinterest + Pinterest Ads) publica leyendo los .md
```

### Estructura

```
linyue-pinterest/
├── README.md                ← este archivo
├── CLINE_INSTRUCCIONES.md   ← prompt maestro para pegar en Cline
├── ETIQUETAS.md             ← política de etiquetas verificadas (NO inventar)
├── PIN_TEMPLATE.md          ← plantilla de metadatos por pin
├── MASTER_INDEX.csv         ← índice global (1 fila por pin)
├── empaquetar.sh            ← genera el ZIP sin tocar los archivos
└── lote_XX/
    ├── imagenes/            ← 001_slug.jpg (renombradas, 100% originales)
    └── textos/              ← 001_slug.md   (metadatos gemelos)
```

### Convenciones de nombre

- Numeración correlativa **global** (001, 002, 003…) a través de todos los lotes.
- `NNN_slug-en-minusculas-sin-acentos.jpg` (ej.: `001_loto-negro-dorado.jpg`)
- Cada imagen tiene su `.md` con **el mismo nombre** dentro de `textos/`.

### Reglas duras (las del jefe 😎)

1. **Las imágenes jamás se recomprimen.** Se copian tal cual; el ZIP no recodifica.
2. **Ninguna etiqueta se inventa.** Solo se usan temas que existen en Pinterest
   (verificación: ver `ETIQUETAS.md`). Si no existe, se descarta y se anota.
3. Idioma de interfaz Pinterest del perfil: **español** → textos visibles en español,
   keywords también en español (Pinterest indexa por idioma del tablero/región).
4. Un pin = un tema claro. Si la imagen da para 2 temas, gana el más buscado
   (ver MASTER_INDEX / ETIQUETAS.md).
5. No subir más de ~5-10 pines por día desde una cuenta personal (ritmo natural).
   Espaciados > ráfagas (evita spam filters).

### Cómo usar con Cline

1. Genera primero los .md (yo los hago).
2. Abre Cline y pega el contenido de `CLINE_INSTRUCCIONES.md`.
3. Cline listará tableros, validará temas etiquetados contra la API, publicará
   (o dejará en borrador si falta enlace/tablero) y reportará IDs de pin.
