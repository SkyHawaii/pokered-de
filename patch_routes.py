#!/usr/bin/env python3
"""Patch wild encounter tables to distribute all missing Pokemon across Routes 2-14."""

import re, os

BASE = '/mnt/d/Claude Code/pokered-de/data/wild/maps'

def read(name):
    with open(f'{BASE}/{name}.asm') as f: return f.read()

def write(name, content):
    with open(f'{BASE}/{name}.asm', 'w') as f: f.write(content)

# -----------------------------------------------------------------------
# Route 2 - slots 0-4 shared, slots 5-9 in IF DEF
# Slot 0-3 -> ZAPDOS, MOLTRES, SNORLAX, AERODACTYL (overflow from Route1)
# Slot 6-9 (both versions) -> IVYSAUR, CHARMELEON, WARTORTLE, BEEDRILL
# -----------------------------------------------------------------------
write('Route2', '''Route2WildMons:
\tdef_grass_wildmons 25 ; encounter rate
\tdb  1, ZAPDOS
\tdb  1, MOLTRES
\tdb  1, SNORLAX
\tdb  1, AERODACTYL
\tdb  1, PIDGEY
IF DEF(_RED)
\tdb  1, WEEDLE
\tdb  1, IVYSAUR
\tdb  1, CHARMELEON
\tdb  1, WARTORTLE
\tdb  1, BEEDRILL
ENDC
IF DEF(_BLUE)
\tdb  1, CATERPIE
\tdb  1, IVYSAUR
\tdb  1, CHARMELEON
\tdb  1, WARTORTLE
\tdb  1, BEEDRILL
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 3 - all shared (no IF DEF)
# Slot 0-3 -> IVYSAUR, CHARMELEON, WARTORTLE, BEEDRILL
# Slot 6-9 -> VENUSAUR, CHARIZARD, BLASTOISE, BUTTERFREE
# -----------------------------------------------------------------------
write('Route3', '''Route3WildMons:
\tdef_grass_wildmons 20 ; encounter rate
\tdb  1, IVYSAUR
\tdb  1, CHARMELEON
\tdb  1, WARTORTLE
\tdb  1, BEEDRILL
\tdb  1, SPEAROW
\tdb  1, PIDGEY
\tdb  1, VENUSAUR
\tdb  1, CHARIZARD
\tdb  1, BLASTOISE
\tdb  1, BUTTERFREE
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 4 - slots 0-2 shared, slots 3-9 in IF DEF
# Shared 0-2 -> VENUSAUR, CHARIZARD, BLASTOISE
# IF DEF slot 3 -> BUTTERFREE; slots 6-9 -> PIDGEOT, NINETALES, ARCANINE, PERSIAN
# -----------------------------------------------------------------------
write('Route4', '''Route4WildMons:
\tdef_grass_wildmons 20 ; encounter rate
\tdb  1, VENUSAUR
\tdb  1, CHARIZARD
\tdb  1, BLASTOISE
IF DEF(_RED)
\tdb  1, BUTTERFREE
\tdb  1, SPEAROW
\tdb  1, EKANS
\tdb  1, PIDGEOT
\tdb  1, NINETALES
\tdb  1, ARCANINE
\tdb  1, PERSIAN
ENDC
IF DEF(_BLUE)
\tdb  1, BUTTERFREE
\tdb  1, SPEAROW
\tdb  1, SANDSHREW
\tdb  1, PIDGEOT
\tdb  1, NINETALES
\tdb  1, ARCANINE
\tdb  1, PERSIAN
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 5 - all in IF DEF
# Slots 0-3 -> PIDGEOT, NINETALES, ARCANINE, PERSIAN
# Slots 6-9 -> PRIMEAPE, CLEFABLE, VILEPLUME, POLIWRATH
# -----------------------------------------------------------------------
write('Route5', '''Route5WildMons:
\tdef_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
\tdb  1, PIDGEOT
\tdb  1, NINETALES
\tdb  1, ARCANINE
\tdb  1, PERSIAN
\tdb  1, MANKEY
\tdb  1, ODDISH
\tdb  1, PRIMEAPE
\tdb  1, CLEFABLE
\tdb  1, VILEPLUME
\tdb  1, POLIWRATH
ENDC
IF DEF(_BLUE)
\tdb  1, PIDGEOT
\tdb  1, NINETALES
\tdb  1, ARCANINE
\tdb  1, PERSIAN
\tdb  1, MEOWTH
\tdb  1, BELLSPROUT
\tdb  1, PRIMEAPE
\tdb  1, CLEFABLE
\tdb  1, VILEPLUME
\tdb  1, POLIWRATH
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 6 - same structure as Route 5
# Slots 0-3 -> PRIMEAPE, CLEFABLE, VILEPLUME, POLIWRATH
# Slots 6-9 -> ALAKAZAM, MACHAMP, VICTREEBEL, TENTACRUEL
# -----------------------------------------------------------------------
write('Route6', '''Route6WildMons:
\tdef_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
\tdb  1, PRIMEAPE
\tdb  1, CLEFABLE
\tdb  1, VILEPLUME
\tdb  1, POLIWRATH
\tdb  1, MANKEY
\tdb  1, ODDISH
\tdb  1, ALAKAZAM
\tdb  1, MACHAMP
\tdb  1, VICTREEBEL
\tdb  1, TENTACRUEL
ENDC
IF DEF(_BLUE)
\tdb  1, PRIMEAPE
\tdb  1, CLEFABLE
\tdb  1, VILEPLUME
\tdb  1, POLIWRATH
\tdb  1, MEOWTH
\tdb  1, BELLSPROUT
\tdb  1, ALAKAZAM
\tdb  1, MACHAMP
\tdb  1, VICTREEBEL
\tdb  1, TENTACRUEL
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 7 - slot 0 shared, slots 1-9 in IF DEF
# Slot 0 -> ALAKAZAM; IF DEF slots 1-3 -> MACHAMP, VICTREEBEL, TENTACRUEL
# Slots 6-9 -> GOLEM, RAPIDASH, FARFETCH_D, CLOYSTER
# -----------------------------------------------------------------------
write('Route7', '''Route7WildMons:
\tdef_grass_wildmons 15 ; encounter rate
\tdb  1, ALAKAZAM
IF DEF(_RED)
\tdb  1, MACHAMP
\tdb  1, VICTREEBEL
\tdb  1, TENTACRUEL
\tdb  1, PIDGEY
\tdb  1, MANKEY
\tdb  1, GOLEM
\tdb  1, RAPIDASH
\tdb  1, FARFETCH_D
\tdb  1, CLOYSTER
ENDC
IF DEF(_BLUE)
\tdb  1, MACHAMP
\tdb  1, VICTREEBEL
\tdb  1, TENTACRUEL
\tdb  1, PIDGEY
\tdb  1, MEOWTH
\tdb  1, GOLEM
\tdb  1, RAPIDASH
\tdb  1, FARFETCH_D
\tdb  1, CLOYSTER
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 8 - slot 0 shared, slots 1-9 in IF DEF
# Slot 0 -> GOLEM; IF DEF slots 1-3 -> RAPIDASH, FARFETCH_D, CLOYSTER
# Slots 6-9 -> GENGAR, EXEGGUTOR, HITMONLEE, HITMONCHAN
# -----------------------------------------------------------------------
write('Route8', '''Route8WildMons:
\tdef_grass_wildmons 15 ; encounter rate
\tdb  1, GOLEM
IF DEF(_RED)
\tdb  1, RAPIDASH
\tdb  1, FARFETCH_D
\tdb  1, CLOYSTER
\tdb  1, PIDGEY
\tdb  1, MANKEY
\tdb  1, GENGAR
\tdb  1, EXEGGUTOR
\tdb  1, HITMONLEE
\tdb  1, HITMONCHAN
ENDC
IF DEF(_BLUE)
\tdb  1, RAPIDASH
\tdb  1, FARFETCH_D
\tdb  1, CLOYSTER
\tdb  1, PIDGEY
\tdb  1, MEOWTH
\tdb  1, GENGAR
\tdb  1, EXEGGUTOR
\tdb  1, HITMONLEE
\tdb  1, HITMONCHAN
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 9 - slots 0-2 shared, slots 3-9 in IF DEF
# Shared 0-2 -> GENGAR, EXEGGUTOR, HITMONLEE
# IF DEF slot 3 -> HITMONCHAN; slots 6-9 -> LICKITUNG, STARMIE, MR_MIME, JYNX
# -----------------------------------------------------------------------
write('Route9', '''Route9WildMons:
\tdef_grass_wildmons 15 ; encounter rate
\tdb  1, GENGAR
\tdb  1, EXEGGUTOR
\tdb  1, HITMONLEE
IF DEF(_RED)
\tdb  1, HITMONCHAN
\tdb  1, SPEAROW
\tdb  1, EKANS
\tdb  1, LICKITUNG
\tdb  1, STARMIE
\tdb  1, MR_MIME
\tdb  1, JYNX
ENDC
IF DEF(_BLUE)
\tdb  1, HITMONCHAN
\tdb  1, SPEAROW
\tdb  1, SANDSHREW
\tdb  1, LICKITUNG
\tdb  1, STARMIE
\tdb  1, MR_MIME
\tdb  1, JYNX
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 10 - slots 0-2 shared, slots 3-9 in IF DEF
# Shared 0-2 -> LICKITUNG, STARMIE, MR_MIME
# IF DEF slot 3 -> JYNX; slots 6-9 -> GYARADOS, LAPRAS, EEVEE, VAPOREON
# -----------------------------------------------------------------------
write('Route10', '''Route10WildMons:
\tdef_grass_wildmons 15 ; encounter rate
\tdb  1, LICKITUNG
\tdb  1, STARMIE
\tdb  1, MR_MIME
IF DEF(_RED)
\tdb  1, JYNX
\tdb  1, SPEAROW
\tdb  1, EKANS
\tdb  1, GYARADOS
\tdb  1, LAPRAS
\tdb  1, EEVEE
\tdb  1, VAPOREON
ENDC
IF DEF(_BLUE)
\tdb  1, JYNX
\tdb  1, SPEAROW
\tdb  1, SANDSHREW
\tdb  1, GYARADOS
\tdb  1, LAPRAS
\tdb  1, EEVEE
\tdb  1, VAPOREON
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 11 - all in IF DEF
# Slots 0-3 -> GYARADOS, LAPRAS, EEVEE, VAPOREON
# Slots 6-9 -> JOLTEON, FLAREON, PORYGON, OMANYTE
# -----------------------------------------------------------------------
write('Route11', '''Route11WildMons:
\tdef_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
\tdb  1, GYARADOS
\tdb  1, LAPRAS
\tdb  1, EEVEE
\tdb  1, VAPOREON
\tdb  1, SPEAROW
\tdb  1, DROWZEE
\tdb  1, JOLTEON
\tdb  1, FLAREON
\tdb  1, PORYGON
\tdb  1, OMANYTE
ENDC
IF DEF(_BLUE)
\tdb  1, GYARADOS
\tdb  1, LAPRAS
\tdb  1, EEVEE
\tdb  1, VAPOREON
\tdb  1, SPEAROW
\tdb  1, DROWZEE
\tdb  1, JOLTEON
\tdb  1, FLAREON
\tdb  1, PORYGON
\tdb  1, OMANYTE
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 12 - all in IF DEF
# Slots 0-3 -> JOLTEON, FLAREON, PORYGON, OMANYTE
# Slots 6-9 -> OMASTAR, KABUTO, KABUTOPS, DRAGONAIR
# -----------------------------------------------------------------------
write('Route12', '''Route12WildMons:
\tdef_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
\tdb  1, JOLTEON
\tdb  1, FLAREON
\tdb  1, PORYGON
\tdb  1, OMANYTE
\tdb  1, PIDGEY
\tdb  1, VENONAT
\tdb  1, OMASTAR
\tdb  1, KABUTO
\tdb  1, KABUTOPS
\tdb  1, DRAGONAIR
ENDC
IF DEF(_BLUE)
\tdb  1, JOLTEON
\tdb  1, FLAREON
\tdb  1, PORYGON
\tdb  1, OMANYTE
\tdb  1, PIDGEY
\tdb  1, VENONAT
\tdb  1, OMASTAR
\tdb  1, KABUTO
\tdb  1, KABUTOPS
\tdb  1, DRAGONAIR
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 13 - all in IF DEF
# Slots 0-3 -> OMASTAR, KABUTO, KABUTOPS, DRAGONAIR
# Slots 6-9 -> DRAGONITE, NIDOQUEEN, NIDOKING, ELECTABUZZ
# -----------------------------------------------------------------------
write('Route13', '''Route13WildMons:
\tdef_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
\tdb  1, OMASTAR
\tdb  1, KABUTO
\tdb  1, KABUTOPS
\tdb  1, DRAGONAIR
\tdb  1, PIDGEY
\tdb  1, VENONAT
\tdb  1, DRAGONITE
\tdb  1, NIDOQUEEN
\tdb  1, NIDOKING
\tdb  1, ELECTABUZZ
ENDC
IF DEF(_BLUE)
\tdb  1, OMASTAR
\tdb  1, KABUTO
\tdb  1, KABUTOPS
\tdb  1, DRAGONAIR
\tdb  1, PIDGEY
\tdb  1, VENONAT
\tdb  1, DRAGONITE
\tdb  1, NIDOQUEEN
\tdb  1, NIDOKING
\tdb  1, ELECTABUZZ
ENDC
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

# -----------------------------------------------------------------------
# Route 14 - all in IF DEF + shared PIDGEOTTO slots
# Slots 0-3 -> DRAGONITE, NIDOQUEEN, NIDOKING, ELECTABUZZ
# Slots 8-9 (shared) -> PIDGEOTTO (already set, keep)
# -----------------------------------------------------------------------
write('Route14', '''Route14WildMons:
\tdef_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
\tdb  1, DRAGONITE
\tdb  1, NIDOQUEEN
\tdb  1, NIDOKING
\tdb  1, ELECTABUZZ
\tdb  1, ODDISH
\tdb  1, VENONAT
\tdb  1, ODDISH
\tdb  1, GLOOM
ENDC
IF DEF(_BLUE)
\tdb  1, DRAGONITE
\tdb  1, NIDOQUEEN
\tdb  1, NIDOKING
\tdb  1, ELECTABUZZ
\tdb  1, BELLSPROUT
\tdb  1, VENONAT
\tdb  1, BELLSPROUT
\tdb  1, WEEPINBELL
ENDC
\tdb  1, PIDGEOTTO
\tdb  1, PIDGEOTTO
\tend_grass_wildmons

\tdef_water_wildmons 0 ; encounter rate
\tend_water_wildmons
''')

print("All route files written successfully.")
