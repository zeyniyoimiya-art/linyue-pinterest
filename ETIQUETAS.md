# ETIQUETAS.md — Política de "Temas etiquetados" (cero invención)

## Cómo funciona de verdad Pinterest

- Los **Temas etiquetados** del creador de pines son un **autocompletado EN VIVO** de la
  taxonomía interna de Pinterest ("interests"). No existe una lista pública oficial
  descargable para la UI de creación de pines.
- Lo único verificable al 100% son los **intereses oficiales de la API v5**
  (`/v5/resources/targeting_interests`), que son la misma taxonomía subyacente.
  Por eso la regla de la casa: **un tema solo se usa si (a) aparece como sugerencia
  real al escribir en la UI, o (b) existe en el endpoint oficial de intereses.**
- Si ninguna de las dos se cumple → el tema se DESCARTA y se anota en el reporte.

## Candidatos de alto valor para los nichos de Lin Yue (VERIFICAR antes de usar)

Evidencia real observada en la UI del usuario (capturas 2026-11-15) al teclear la letra **s**:
Snoopy · Sol · South Park · Sistema Solar · Sailor Moon · Sistema Digestivo · Sandalias.
→ Prueba de que la UI sugiere temas amplios (cultura pop, ciencia, objetos cotidianos),
  no solo nichos "wallpaper". También confirma que **no todo término buscado existe**.

Candidatos típicos del nicho *wallpapers / arte espiritual / anime* (lista de trabajo,
**no** usar sin verificar):

Wallpapers & celular:
- Fondos de pantalla / Wallpaper / Phone wallpaper (según idioma de la UI)
- Fondos de pantalla para celular (ver si existe como interés)

Arte y estética:
- Arte · Ilustración · Arte de fantasía · Arte asiático · Arte japonés · Sumi-e (si existe)
- Arte minimalista · Estética · Aesthetic

Temáticas:
- Koi / Carpas koi (verificar) · Fénix · Dragón · Luna · Loto / Flor de loto (verificar)
- Medusa (verificar) · Kitsune (verificar) · Yin yang (verificar) · Budismo / Zen / Meditación
- Aquarela oriental (verificar)

Anime/Gaming:
- Anime · Zenless Zone Zero (si existe) · Personaje de anime · Sailor Moon (confirmado visible en UI)

Naturaleza/espiritual:
- Naturaleza · Bosque · Agua · Cristales · Astrología (Pinterest lo ubica en
  "Pop Culture → Tarot & Astrology", según discusiones públicas de usuarios)

## Taxonomía pública conocida (nivel superior, fuente: listas de categorías usadas por Pinterest)

Animals · Architecture · Art · Beauty · Cars & Motorcycles · Celebrities · Design ·
DIY & Crafts · Entertainment (Gaming, Movies & TV, Pop Culture…) · Film, Music & Books ·
Food & Drink · History · Holidays · Home Decor · Humor · Men's Fashion · Quotes ·
Science & Nature · Sports · Technology · Travel · Weddings · Women's Fashion ·
Tarot & Astrology · Tattoos.

Sub-intereses exactos relevantes se descubren SOLO por las vías de verificación de arriba.

## Reglas operativas

1. Máximo 10 temas por pin; prioriza 4–6 bien elegidos sobre 10 vagos.
2. Mezcla: 1-2 genéricos con volumen (p. ej. "Wallpaper") + 2-4 de nicho exacto.
3. Idioma: mismo idioma de la cuenta (español) salvo que el interés oficial venga en inglés.
4. En cada `.md` de pin: sección `Temas etiquetados` con los candidatos a verificar
   y una última sección `Verificación` rellenada al final.
5. **Prohibido** escribir temas "de oído". Si dudas: fuera.
