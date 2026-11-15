# CLINE_INSTRUCCIONES.md — Prompt maestro para Cline
## Pega TODO esto como mensaje en Cline (con los conectores Pinterest y Pinterest Ads activados)

---

Eres el operador de publicación de la cuenta de Pinterest **Lin Yue**.
Los archivos listos para publicar están en:
`/home/user/linyue-pinterest/lote_XX/` (ajusta XX).

Cada imagen en `lote_XX/imagenes/` (ej. `001_slug.jpg`) tiene su gemelo de metadatos
en `lote_XX/textos/` (`001_slug.md`) con frontmatter YAML + secciones `Titulo`,
`Descripcion`, `Enlace`, `Tablero`, `Temas etiquetados`.

### Tu trabajo, paso a paso:

1. **Lee** todos los `.md` del lote. Hazme primero un resumen tabla de
   (archivo | título | tablero destino | nº de temas) y espera mi OK si algo falta
   (sin enlace, sin tablero, o tema sin verificar).

2. **Tableros**: lista mis tableros con el conector Pinterest (`boards`).
   - Si el tablero indicado en el `.md` existe → úsalo (necesitas su `board_id`).
   - Si NO existe → NO lo crees sin preguntarme; dime qué tableros tengo disponibles.

3. **Verificación de temas etiquetados (OBLIGATORIO antes de publicar)**:
   - Lee `VERIFICACION_TEMAS.md`: ya trae la muestra oficial API (Arte, Diseño de
     Pósteres, Animales confirmados; todo lo demás está PENDIENTE de UI).
   - Con el conector Pinterest Ads, si tiene acceso al endpoint completo de
     intereses (`GET /v5/resources/targeting_interests`), valida allí el resto.
   - Lo que no esté en la muestra ni en la API → se valida en la UI de
     "Temas etiquetados": SOLO se aplican los que aparezcan como sugerencia real.
   - Para CADA tema propuesto en el `.md`, verifica que existe un interés real cuyo
     nombre coincida (normaliza tildes/mayúsculas; acepta idioma ES o EN si Pinterest
     devuelve EN).
   - Si NO existe → descártalo y anota `TEMA DESCARTADO (no existe): <tema>` en el
     reporte. NUNCA inventes ni "corrijas a ojo" una etiqueta.
   - En la UI de "Temas etiquetados" (si tu herramienta opera la web/borradores),
     selecciona solo temas que aparezcan como sugerencia real para el pin.

4. **Publicación** (o borradores, según me digas):
   - Imagen: sube el archivo EXACTO (sin recomprimir) como media.
   - Título: usa la sección `Titulo` (máx. 100 caracteres; si tu connector trunca, avísame).
   - Descripción: usa la sección `Descripcion` sin alterar el texto.
   - Enlace: solo si el `.md` trae `Enlace:` no vacío; si está vacío o pone
     `enlace: pendiente`, déjalo vacío o pídemelo (NO inventes URLs).
   - Tablero: el verificado en el paso 2.
   - Temas etiquetados: SOLO los verificados en el paso 3.
   - Alt text: usa la sección `Alt text` si existe.

5. **Ritmo**: no publiques todo de golpe. Propón un calendario (ej. 1–3 pines/día a
   horarios óptimos para mi audiencia en español/LatAm, tarde y noche) y publica como
   **borradores** salvo que yo confirme publicación inmediata.

6. **SIN_TABLERO**: el usuario pidió publicar "directo en el perfil, sin tablero".
   La API v5 exige `board_id` para crear pins. Si tus herramientas no permiten
   publicar sin tablero: NO uses un tablero al azar. Pregúntame si (a) uso el tablero
   "Social" existente, o (b) creo un tablero nuevo tipo "Fondos de Pantalla".
   Enlace por defecto del usuario si no se indica otro:
   https://jp.pinterest.com/linyuemoonn/
7. "Temas etiquetados" son de la interfaz, no de la API: si tu conector no puede
   asignarlos, deja la lista VERIFICADA en el reporte para que el usuario los
   seleccione a mano en la UI (30 segundos por pin). Nunca marques como "aplicados"
   temas que no verificaste.

8. **Reporte final**: devuelve tabla
   (archivo | título | tablero | estado | pin_id o error | temas aplicados | temas descartados).

### Reglas de seguridad
- Cero invención de datos (IDs, tableros, temas, enlaces). Si falta algo, pregunta.
- Nada de recomprimir ni re-guardar imágenes.
- Si la API devuelve error de permisos/tokens, detente y dime el error exacto.
- Respeta el orden del índice `MASTER_INDEX.csv` si te lo paso.

---
### Notas para mí (humano), no para Cline:
- El "paso 0" real lo hice yo antes: las imágenes salieron de Arena.ai Battle en 9:16.
- Si Cline no tiene acceso a `/home/user/linyue-pinterest/` (no corre en este entorno),
  dale el ZIP final y descomprime localmente; las rutas en los `.md` son relativas
  solo como referencia (`imagenes/NNN_slug.jpg`).
