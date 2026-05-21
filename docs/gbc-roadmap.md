# GBC-Farbversions-Roadmap (Recherche)

## Ziel

Den vorliegenden pokered-custom-de-Build (deutsches Pokémon Rot mit Nuzlocke-/QoL-Anpassungen) in eine **Game-Boy-Color-Version** überführen — analog zu vorhandenen englischen/französischen GBC-Hacks.

## Recherchierter Stand

| Projekt | Basis | Sprache | Hinweis |
| --- | --- | --- | --- |
| [dannye/pokered-gbc](https://github.com/dannye/pokered-gbc) | iimarckus/pokered (englisch) | en | Vollständige GBC-Portierung (FroggestSpirit, Drenn, dannye). Enthält `color/`, `audio/`, `gfx/` Verzeichnisse. Crysaudio-Branch für besseren Sound. |
| [Red Full Color Hack — German](https://www.romhacking.net/hacks/7072/) | Danny-E 33 Color-ASM + einstein95/pokered-de Texte | de | Distribuiert als **IPS-Patch**, kein Source-Repo verfügbar. Patch ist eine ASM-Diff, die nur als binärer Patch erhältlich ist. |
| [Engezerstorung/pokered-gbc-plus-fr](https://github.com/Engezerstorung/pokered-gbc-plus-fr) | dannye/pokered-gbc | fr | Französische Lokalisierung mit eigenen Modifikationen — Vorlage, wie Lokalisierung + GBC kombiniert werden kann. |
| [Vortyne/pureRGB](https://github.com/Vortyne/pureRGB) | pokered | en | Purist-QoL-Hack, kein Color-Fokus. |

**Hauptaussagen:**
- `dannye/pokered-gbc` ist das einzige öffentlich gepflegte Disassembly-Repo mit voller GBC-Unterstützung.
- Es basiert auf englischer pokered, **nicht** auf `einstein95/pokered-de`. Eine direkte Übernahme erfordert ein Rebase auf den deutschen Code.
- Der existierende "German Color"-Hack ist ein IPS-Patch ohne Source — als Vorlage für unsere Source-basierte Implementation **nicht verwendbar**.

## Architektur-Anforderungen

| Bereich | Vanilla DMG (aktuell) | GBC (Ziel) |
| --- | --- | --- |
| ROM-Größe | 1 MB / 64 Banks | mindestens 2 MB / 128 Banks |
| Cartridge-Typ | MBC1 | MBC5 |
| Tile-Daten | 1 BG-Map, 1 OAM-Palette | bis zu 8 BG-Paletten + 8 OAM-Paletten je 4 Farben |
| Palette-Lader | `engine/gfx/palettes.asm` (SGB-only) | zusätzlich GBC-Palette-Code aus `dannye/pokered-gbc:color/` |
| Pokémon-Sprites | Mono | Mono + Palette-Index pro Pokémon (`gfx/pokemon/palettes.asm` aus pokered-gbc) |
| Map-Tilesets | Pro Tileset 1 Palette | Pro Tileset mehrere Paletten (CGB-Attribute) |
| Build-Flag | nichts | `_CGB EQU 1` oder ähnlich, Makefile-Anpassung |

## Roadmap

### Phase A — Vorarbeit (Diff-Extraktion)

1. **`pokered` (iimarckus) ↔ `dannye/pokered-gbc`**: Differenzanalyse aller Files, fokussiert auf:
   - `color/*.asm` (GBC-Paletten und Color-Tabellen)
   - `home/audio.asm`, `audio/engine_*.asm` (Audio bleibt DMG-kompatibel)
   - `engine/gfx/palettes.asm` (CGB-Erweiterungen)
   - Makefile + Header-Bytes für MBC5
2. **`pokered` ↔ `einstein95/pokered-de`**: Identifizieren, welche deutschen Anpassungen Conflicts mit dem GBC-Patch verursachen können (Text-Tabellen, Item-Namen, Font-Tiles).
3. **`einstein95/pokered-de` ↔ `pokered-custom-de`**: Bestandsaufnahme aller Custom-Anpassungen (Nuzlocke, Level-1, EP-Verteilung, Options-Menü, etc.).

### Phase B — Branch & Build-Infrastruktur

4. Neuen Branch `feature/gbc-color` aus `master`.
5. ROM-Header von MBC1 → MBC5; ROM-Size auf 2 MB erhöhen.
6. Makefile-Anpassung: Build-Flag für CGB, Bank-Count erweitern.
7. `color/`-Verzeichnis aus `dannye/pokered-gbc` portieren — Konflikte (Sektion-Namen, Bank-Layout) auflösen.

### Phase C — Sprites & Tiles

8. **Pokémon-Sprite-Paletten**: `gfx/pokemon/palettes.asm` aus pokered-gbc übernehmen.
9. **Map-Tileset-Paletten**: pro Tileset CGB-Palette-Daten ergänzen.
10. **OAM-Sprite-Paletten**: Trainer-, Boss-, Item-Sprites mit Palettenzuordnung.
11. **Optional**: Sprites aus späteren Generationen (Gen-2-Stil) ersetzen — separates Sub-Projekt.

### Phase D — Integration mit Custom-Features

12. Custom-Features aus Master rebasen auf `feature/gbc-color`:
    - Nuzlocke-Permadeath ([engine/battle/core.asm](../engine/battle/core.asm))
    - Options-Menü mit Nuzlocke-Toggle ([engine/menus/main_menu.asm](../engine/menus/main_menu.asm))
    - EP-Verteilung ([engine/battle/experience.asm](../engine/battle/experience.asm))
    - Intro-Skip ([engine/movie/oak_speech/oak_speech.asm](../engine/movie/oak_speech/oak_speech.asm))
    - Pokedex+Bälle bei Starter ([scripts/OaksLab.asm](../scripts/OaksLab.asm))
    - Mama-Heal nach Rival1-Verlust ([scripts/RedsHouse1F.asm](../scripts/RedsHouse1F.asm))
13. Testen in beiden Modi: DMG-Compat (kein CGB-Boot) und CGB.

### Phase E — Polish & Release

14. Tile-Layer-Konflikte beseitigen (z.B. Battle-Hintergründe).
15. Status-Screen-Farben angleichen.
16. IPS-Patch generieren für Verteilung.

## Aufwandsschätzung

- Phase A: 1-2 Tage Recherche/Diff
- Phase B: 2-3 Tage Refactor
- Phase C: 1-2 Wochen Sprite-Arbeit
- Phase D: 3-5 Tage Konflikt-Auflösung
- Phase E: 2-3 Tage Polish

**Gesamt: 3-5 Wochen Vollzeit-Arbeit.**

## Nicht-Ziele

- Keine Sprite-Replacements aus FRLG/Gen 3 (separates Projekt).
- Kein Audio-Update (Crysaudio kann später dazukommen).
- Keine Map-Layout-Änderungen.

## Nächste Schritte (wenn Branch gestartet wird)

1. `git checkout -b feature/gbc-color`
2. `git remote add upstream-gbc https://github.com/dannye/pokered-gbc.git`
3. `git fetch upstream-gbc`
4. Phase-A-Diff-Analyse beginnen.

## Quellen

- [dannye/pokered-gbc — GitHub](https://github.com/dannye/pokered-gbc)
- [Red Full Color Hack - German Version — romhacking.net](https://www.romhacking.net/hacks/7072/)
- [Engezerstorung/pokered-gbc-plus-fr — GitHub](https://github.com/Engezerstorung/pokered-gbc-plus-fr)
- [einstein95/pokered-de — GitHub](https://github.com/einstein95/pokered-de)
- [PureRGB QoL hack — pokecommunity.com](https://www.pokecommunity.com/threads/pokemon-purergb-qol-romhack-complete-new-version-released-feb-2026.494837/)
