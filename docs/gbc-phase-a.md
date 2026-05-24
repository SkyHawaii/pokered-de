# Phase A — Differenzanalyse für GBC-Farbversion

**Datum:** 2026-05-22
**Vergleichsbasen:**
- `pret/pokered` master (englisches Vanilla-Disassembly)
- `dannye/pokered-gbc` master (englische GBC-Portierung, geclont nach `D:\Claude Code\pokered-color`)
- `einstein95/pokered-de` master (deutsche Lokalisierung)
- `SkyHawaii/pokered-custom-de` master (unser aktueller Stand mit Nuzlocke/QoL)

## Executive Summary

Eine GBC-Color-Version unserer deutschen Custom-ROM ist **machbarer als erwartet**:

- Die GBC-Portierung berührt **nur 1 Textfile** und **keine Charmap** — Text-Konflikte mit der deutschen Lokalisierung sind minimal.
- Die GBC-Portierung baut sich primär aus **412 neuen Files** (`color/`, `gfx/gs*`) und **223 modifizierten Files**, die fast ausschließlich Rendering/Palette betreffen.
- **Nur 16 Files überschneiden sich zwischen GBC und DE-Base.** Davon sind 9 Files Custom-Feature-Konflikte (Nuzlocke etc.) — das ist die eigentliche Merge-Arbeit.
- Wichtige Korrektur zur Vorab-Roadmap: dannye/pokered-gbc bleibt auf **MBC3** (nicht MBC5) und behält ROM-Größe 1 MB. Header wurde aber komplett umgebaut.

## 1. GBC-Diff (`pret/pokered` → `dannye/pokered-gbc`)

**Aggregiert:** 637 Files (+7797 / −1142 Zeilen), davon 412 neu, 223 modifiziert, 0 gelöscht.

### Neue Files (412)

| Pfad | Anzahl | Inhalt |
| --- | --- | --- |
| `color/*.asm` | ~50 | Komplette GBC-Palette-Infrastruktur: `loadpalettes`, `super_palettes`, `vblank`, `init`, `refreshmaps` und pro Tileset/Spritekategorie eine Datei |
| `color/data/*.asm` & `.bin` | ~10 | Map-Palette-Assignments, Roof-Paletten, Spritepaletten, Animations-Tileset-Paletten |
| `color/tilesets/*.asm` | 17 | Pro Tileset (overworld, cavern, gym, lab, …) eigene Paletten-Definitionen |
| `gfx/gs/*.png` | ~10 | Gen-2-Stil Logo, Font, HP-Bar, Status-Tiles, Textbox, Exp-Bar |
| `gfx/gstrainers/*.png` | 49 | Trainer-Sprites im Gen-2-Stil (optional via `GEN_2_GRAPHICS`) |
| `gfx/pokemon/gsback/` & `gsfront/` | 302 | Alle 151 Pokémon im Gen-2-Stil (Front + Back) |
| `macros/color.asm` | 1 | Neue Makros für Paletten-Definition (`RGB`, `palette`, etc.) |

### Modifizierte Files nach Bereich

| Bereich | Anzahl | Was passiert |
| --- | --- | --- |
| `data/pokemon/base_stats/*.asm` | 151 | Pro Mon ein Palette-Index-Byte hinzugefügt |
| `data/` (rest) | 7 | SGB-Paletten erweitert, Items für Trade-Color |
| `engine/` | 26 | Display-Routinen für CGB-Kompatibilität erweitert |
| `home/` | 11 | Low-Level: `header.asm` (rst-Vektoren umgewidmet), `vblank.asm` (Color-Hook), `vcopy.asm`, `palettes.asm`, `fade.asm`, `init.asm` |
| `gfx/` | 7 | `font.asm` mit `IF GEN_2_GRAPHICS`-Switch, Pokemon-Logo, Battle-Hud |
| Build | 5 | `Makefile` (`-jsv` → `-Cjv` für CGB-Flag), `layout.link` (`color/`-Sections), `includes.asm`, `macros/asserts.asm` |

### Wichtige Architektur-Korrekturen zur ursprünglichen Roadmap

- **MBC bleibt MBC3+RAM+BATTERY** (nicht MBC5). Roadmap-Korrektur nötig.
- **ROM-Größe bleibt 1 MB** im Default-Build — der Build erzeugt 1.048.576 Bytes. Erweiterung wäre nur für Gen-2-Sprites nötig.
- **Header völlig umgebaut:** rst-Vektoren werden für Color-Routinen genutzt (`_LoadMapVramAndColors` auf rst0, vblank-Hook auf rst10).
- **DMG-Kompatibilität bleibt:** Das ROM läuft sowohl auf GBC (mit Farbe) als auch DMG (graustufig). `color/dmg.asm` enthält den Fallback.
- **`GEN_2_GRAPHICS` ist ein Build-Flag** (nicht standardmäßig an): wenn aus, bleibt Font + Battle-HUD im Gen-1-Layout → kompatibel mit DE-Font-Tiles.

## 2. DE-Diff (`pret/pokered` → `einstein95/pokered-de`)

**Aggregiert:** 316 Files (+12.391 / −10.404 Zeilen).

| Bereich | Anzahl | Was passiert |
| --- | --- | --- |
| `text/` | 209 | Großteil der DE-Arbeit: lokalisierte Dialoge |
| `engine/` | 34 | Text-Engine, Längen-Anpassungen, Item-Namen-Längen |
| `data/` | 29 | Item-Namen, Mon-Namen, Move-Namen, Text-Boxes |
| `gfx/` | 15 | Font (Ä/Ö/Ü), evtl. Logo |
| `scripts/` | 12 | Skript-Texte |
| `home/` | 6 | Text-Print-Routinen |
| Build | 2 | `Makefile`, `roms.sha1` |

**Wichtig:** DE fügt fast keine *neuen* Files hinzu (nur 1 in `gfx/`). Die Lokalisierung ist eine reine Rewrite-Operation auf existierenden Files.

## 3. Konflikt-Matrix

### 3a. Zwei-Wege-Konflikt: GBC ∩ DE (16 Files)

Files, die sowohl die GBC-Portierung als auch die DE-Lokalisierung am Vanilla-Pokered ändern.

| File | Bemerkung |
| --- | --- |
| `engine/battle/core.asm` | GBC: Color-Hooks im Battle-Loop. DE: Text-Längen-Patches. |
| `engine/events/diploma.asm` | Beide: Render-Logik |
| `engine/items/item_effects.asm` | Beide: Display-Pfade |
| `engine/link/cable_club.asm` | Beide: Trade-Display |
| `engine/link/print_waiting_text.asm` | Beide: Text-Render |
| `engine/menus/naming_screen.asm` | GBC: Color. DE: erweiterte Charset-Anzeige. |
| `engine/menus/start_sub_menus.asm` | Beide: Menu-Display |
| `engine/movie/hall_of_fame.asm` | Beide: Render |
| `engine/movie/title.asm` | GBC: Logo-Color. DE: Logo-Tile-Anpassung. |
| `engine/pokemon/status_screen.asm` | GBC: Palette pro Mon. DE: Text-Längen. |
| `gfx/font.asm` | **GBC nutzt `IF GEN_2_GRAPHICS`-Switch — der Default-Pfad ist DE-kompatibel.** |
| `gfx/tilesets/overworld.png` | Pixel-Diff — wahrscheinlich konfliktarm |
| `ram/wram.asm` | GBC: neue Color-State-Variablen |
| `text/SilphCo8F.asm` | Einziges Textfile mit doppelter Berührung — eine bewusste Texterweiterung |
| `Makefile` | RGBFIX-Flags + Build-Targets |
| `README.md` | Trivial |

### 3b. Drei-Wege-Konflikt: GBC ∩ DE ∩ pokered-custom-de Custom-Features

Files, wo zusätzlich unsere Nuzlocke/QoL-Commits eingreifen — **die wirklich kritische Merge-Arbeit:**

| File | Custom-Feature | Konflikt-Schwere |
| --- | --- | --- |
| `engine/battle/core.asm` | Nuzlocke-Permadeath, Wild-Mon-Markierung | **hoch** — großer File, viele Touchpoints |
| `engine/battle/experience.asm` | EP für alle Party-Mons, Sammeltext | mittel — neue Routinen, keine Display-Änderung |
| `engine/items/item_effects.asm` | Pokébälle, Item-Effekte | mittel |
| `engine/menus/naming_screen.asm` | Intro-Skip nutzt diesen Pfad | mittel |
| `engine/menus/start_sub_menus.asm` | Nuzlocke-Toggle als 4. Box im Options-Menü | **hoch** — Display + Input + Box-Layout |
| `engine/movie/oak_speech/oak_speech.asm` | Intro übersprungen | **hoch** — beide ändern Render-Reihenfolge |
| `engine/movie/title.asm` | Custom-Titelbild-Verhalten | mittel |
| `home/overworld.asm` | Mama-Heal-Logik (`HandlePlayerBlackOut`) | mittel |
| `ram/wram.asm` | `BIT_NUZLOCKE_MODE` in `wOptions` | niedrig — additive Bit-Definition |

Plus **151 systematische Konflikte** in `data/pokemon/base_stats/*.asm`: GBC fügt jedem Mon ein Palette-Byte hinzu; custom-de hat die Movesets/Stats geändert. Konflikte sind **mechanisch identisch** über alle 151 Files — einmal pro Mon ein Palette-Byte ergänzen.

## 4. Empfehlung für nächste Schritte

### Strategische Wahl: Wer ist die Basis?

Zwei Optionen, jeweils mit Trade-off:

**Option X (Basis = dannye/pokered-gbc):** Cherry-Pick DE-Texte + Custom-Features drauf.
- *Pro:* Color-Infrastruktur ist sauber, kein Risiko bei Phase B/C.
- *Contra:* Wir müssen 209 DE-Textfiles + alle Custom-Commits manuell auf einen englischen Code-Stand portieren. Sehr viel Merge-Arbeit für die Texte.

**Option Y (Basis = pokered-custom-de):** Color-Infrastruktur aus dannye/pokered-gbc cherry-picken.
- *Pro:* Texte + Custom-Features bleiben unangetastet.
- *Contra:* `color/`-Files + 223 modifizierte Files müssen am DE-Code adaptiert werden — vor allem die 9 Drei-Wege-Konflikt-Files brauchen sorgfältiges Merging.

**Empfehlung:** **Option Y.** Die 9 Drei-Wege-Konflikte sind beherrschbar, weil wir den Custom-Code im Detail kennen. Die 209 DE-Textfiles auf englischen Code zu rebasen wäre dagegen Blindflug.

### Konkrete Phase-B-Vorbereitung

1. **Branch:** `feature/gbc-color` aus `master` (pokered-custom-de)
2. **Zweit-Upstream:** `git remote add upstream-gbc https://github.com/dannye/pokered-gbc.git`
3. **Erstes Kopieren:** `color/`-Verzeichnis komplett übernehmen (412 neue Files, keine Konflikte)
4. **Build-Infrastruktur:** `Makefile`-RGBFIX-Flag `-jsv` → `-Cjv`, `layout.link` um `color/`-Sections erweitern, `includes.asm` anpassen
5. **Header umbauen:** `home/header.asm` aus dannye übernehmen (rst-Vektoren) — vorher prüfen, ob unsere Custom-Code rst-Vektoren benutzt
6. **151 `base_stats`-Files:** Skript, das jedem File die Palette-Zeile aus dannye anfügt — mechanisch
7. **9 kritische Engine-Files:** Manuelles Merging, jede Datei einzeln, mit Build-Test nach jeder
8. **`GEN_2_GRAPHICS` ausgeschaltet lassen** — damit der DE-Font erhalten bleibt

### Aufwandsschätzung (revidiert)

- Phase B (Branch + Build + color/ kopieren): **2 Tage**
- Phase C (151 base_stats mit Skript, Tileset-Paletten): **3 Tage**
- Phase D (9 kritische Files manuell): **5-7 Tage**
- Phase E (Polish, Bugfixes): **2-3 Tage**

**Revidiert: 12-15 Arbeitstage** (statt 3-5 Wochen). Hauptersparnis: DE-Texte bleiben unangetastet, Font-Konflikt entschärft durch `GEN_2_GRAPHICS`-Flag.

### Nicht-Ziele (unverändert)

- Keine Gen-2-Sprite-Replacements (`GEN_2_GRAPHICS = 0`).
- Kein Audio-Update.
- Keine Map-Änderungen.

## Anhang: Reproduzierbare Befehle

```bash
# Aus pokered-color/
git diff --shortstat upstream-en/master..origin/master
git diff --diff-filter=A --name-only upstream-en/master..origin/master | wc -l
git diff --diff-filter=M --name-only upstream-en/master..origin/master

# Aus pokered-custom-de/
git diff --shortstat upstream-en/master..upstream/master
git log --name-only --pretty=format:"" upstream/master..HEAD | sort -u
```
