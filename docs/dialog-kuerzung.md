# Dialog-Kürzungen — lange Dialoge (≥ 3 Textboxen)

Ziel: das nervige Weiterdrücken reduzieren. Erfasst sind **nur lange Dialoge ab 3 Textboxen** (Kriterium: `para`-Anzahl + 1). Spalte „Original" zeigt den aktuellen Text, Spalte „Vorschlag" eine **moderat gekürzte** Fassung — spürbar kürzer, aber der NPC-Ton bleibt erkennbar.

Gesamtumfang: **183 lange Dialoge** (von ~1957 Einträgen). Aufbau erfolgt regionsweise; Fortschritt siehe Tabelle unten.

## Konventionen

- `[Name]` = Spielername (`<PLAYER>` im Code), `[Rivale]` = Rivalenname (`<RIVAL>`).
- `#MON`, `#DEX`, `#BALL`, `#FLÖTE` = Spiel-Glyphen (im Code mit `#` bzw. `text_far`).
- Zeilen sind auf **max. 18 Zeichen** ausgelegt (Textbox-Breite). Leerzeile = neue Box (`para`).
- ⚠ = Dialog durch den Quick-Start (entfernter Botengang) vermutlich **nicht mehr erreichbar** — Kürzung optional.
- „Boxen" = Anzahl Textboxen vorher → nachher.

## Fortschritt

| Region | Einträge | Status |
|--------|----------|--------|
| Alabastia / Oaks Labor | 7 | ✅ fertig |
| Vertania City + Markt | 6 | ✅ fertig |
| Route 1 / Route 22 | 6 | ✅ fertig |
| Vertania-Wald | 2 | ✅ fertig |
| Marmoria (Pewter) | 8 | ✅ fertig |
| Mondberg | 1 | ✅ fertig |
| Azuria (Cerulean) + Umgebung | 14 | ✅ fertig |
| Orania (Vermilion) + SS Anne | 14 | ✅ fertig |
| Prismania (Celadon) | 21 | ✅ fertig |
| Lavandia + Pokémon-Turm | 10 | ✅ fertig |
| Fuchsania + Safari-Zone | 20 | ✅ fertig |
| Saffronia + Silph Co. | 21 | ✅ fertig |
| Zinnober + Mansion | 11 | ✅ fertig |
| Arenen (Rest) + Routen-Tipps | 11 | ✅ fertig |
| Top Vier + Champion + Ruhmeshalle | 13 | ✅ fertig |

---

## Alabastia (Pallet Town) / Oaks Labor

### `_PalletTownOakItsUnsafeText` — Prof. Eich (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| PROF. EICH:<br>Draußen ist es<br>gefährlich! Wilde<br>#MON leben im<br>hohen Gras!<br><br>Du brauchst eigene<br>#MON, um<br>Dich zu schützen.<br><br>Komm, folge<br>mir! | PROF. EICH:<br>Draußen ist es<br>gefährlich! Im Gras<br>leben wilde #MON.<br><br>Du brauchst eigene<br>#MON. Komm,<br>folge mir! |

### `_OaksLabOakMyInventionPokedexText` — Eich, #DEX (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Auf dem Tisch<br>dort seht Ihr<br>eine Erfindung<br>von mir, den<br>#DEX!<br><br>Er erfaßt<br>automatisch Daten<br>über #MON,<br>die man gefangen<br>oder gesehen hat!<br><br>Er ist eine Art<br>Hi-Tech-Lexikon! | Das dort ist<br>meine Erfindung,<br>der #DEX!<br><br>Er erfaßt jedes<br>#MON, das Du<br>fängst oder siehst —<br>ein Hi-Tech-Lexikon! |

### `_OaksLabOakThatWasMyDreamText` — Eich, sein Traum (Boxen 6 → 3)

| Original | Vorschlag |
|----------|-----------|
| Ein Lexikon über<br>alle #MON der<br>Welt...<br><br>Das war immer<br>mein Traum!<br><br>Aber ich bin zu<br>alt! Ich schaffe<br>es nicht mehr!<br><br>Also bitte ich<br>Euch, meinen<br>Traum zu<br>verwirklichen!<br><br>Macht Euch auf<br>den Weg, Jungs!<br><br>Dies ist eines<br>der bedeutendsten<br>Projekte in der<br>Geschichte der<br>#MON! | Ein Lexikon über<br>alle #MON der<br>Welt — das war<br>immer mein Traum!<br><br>Doch ich bin zu<br>alt dafür.<br>Verwirklicht ihr<br>ihn für mich!<br><br>Macht Euch auf<br>den Weg, Jungs! |

### `_OaksLabRivalLeaveItAllToMeText` — Rivale (Boxen 4 → 3)

| Original | Vorschlag |
|----------|-----------|
| `<RIVAL>`:<br>Alles klar, Opa!<br>Überlaß es<br>ruhig mir!<br><br>`<PLAYER>`, es tut<br>mir leid, aber<br>ich brauche Deine<br>Hilfe nicht!<br><br>Ich hab's! Ich<br>leihe mir von<br>meiner Schwester<br>eine KARTE!<br><br>Und Dir soll sie<br>keine geben,<br>`<PLAYER>`! Hahaha! | [Rivale]:<br>Klar, Opa!<br>Überlaß es mir!<br><br>[Name], Deine<br>Hilfe brauche<br>ich nicht!<br><br>Ich leih mir bei<br>meiner Schwester<br>eine KARTE — und<br>Du kriegst keine!<br>Hahaha! |

### ⚠ `_OaksLabOak1DeliverParcelText` — Paket-Übergabe (Boxen 6)

> Quick-Start: Paket-Quest entfernt → dieser Dialog ist vermutlich **nicht mehr erreichbar**. Kürzung nur falls der Pfad doch noch genutzt wird.

| Original | Vorschlag (optional) |
|----------|-----------|
| PROF. EICH:<br>Hallo, `<PLAYER>`!<br><br>Wie geht es<br>dem #MON?<br><br>Es scheint Dich<br>sehr zu mögen!<br><br>Du mußt als<br>#MON-TRAINER<br>sehr talentiert<br>sein!<br><br>Du hast etwas<br>für mich?<br><br>`<PLAYER>` übergibt<br>PROF. EICH das<br>PAKET. | PROF. EICH:<br>Hallo, [Name]!<br>Dein #MON mag<br>Dich sehr — Du<br>hast Talent!<br><br>Du hast etwas<br>für mich?<br><br>[Name] übergibt<br>EICH das PAKET. |

### ⚠ `_OaksLabOak1ReceivedPokeballsText` / `_OaksLabGivePokeballsExplanationText` — Pokéball-Übergabe (Boxen 3 / 5)

> Quick-Start: Pokébälle werden direkt per Event vergeben → diese Erklärtexte laufen vermutlich nicht mehr. Bei Bedarf analog zu oben straffen (Kerninfo: „Wirf einen #BALL auf wilde #MON, um sie zu fangen — mit etwas Glück.").

---

## Vertania City (Viridian) + Markt

### `_ViridianCityOldManKnowHowToCatchPokemonText` — alter Mann, Fang-Tutorial (Boxen 4 → 2)

| Original | Vorschlag |
|----------|-----------|
| Aha, Du benutzt<br>einen #DEX!<br><br>Wenn Du ein<br>#MON fängst,<br>wird Dein #DEX<br>automatisch<br>aktualisiert.<br><br>Was? Du weißt<br>nicht, wie man<br>#MON fängt?<br><br>Kein Problem! Ich<br>erkläre es Dir! | Aha, ein #DEX!<br>Jedes gefangene<br>#MON trägt sich<br>dort selbst ein.<br><br>Du weißt nicht,<br>wie man fängt?<br>Ich zeig's Dir! |

### `_ViridianCityTrainerTips1Text` — Tipps (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| TIPS FÜR TRAINER<br><br>Fange #MON,<br>um Deine Sammlung<br>zu erweitern!<br><br>Je mehr Du<br>besitzt, desto<br>leichter werden<br>die Kämpfe! | TIPS FÜR TRAINER<br><br>Fange viele #MON!<br>Je mehr Du hast,<br>desto leichter<br>die Kämpfe. |

### `_ViridianCityTrainerTips2Text` — Tipps AP (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| TIPS FÜR TRAINER<br><br>Die Attacken der<br>#MON werden<br>durch ihre<br>ANGRIFFSPUNKTE,<br>AP, limitiert.<br><br>Um die AP wieder<br>aufzufüllen, mußt<br>Du die #MON<br>in ein #MON-<br>CENTER bringen! | TIPS FÜR TRAINER<br><br>Attacken haben<br>begrenzte AP.<br><br>Auffüllen kannst<br>Du sie im<br>#MON-CENTER. |

### `ViridianCityFisherYouCanHaveThisText` — Angler, TM (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Gäääähn! Ich bin<br>wohl eingenickt!<br><br>Ich habe<br>geträumt, daß<br>TRAUMATO meine<br>Träume fressen<br>wollte! Was ist<br>das? Wo kommt<br>denn die TM her?<br><br>Das ist mir<br>unheimlich! Hier,<br>Du kannst sie<br>haben! | Gäääähn! Wohl<br>eingenickt...<br><br>Ich träumte von<br>TRAUMATO — und<br>jetzt liegt da<br>eine TM! Unheim-<br>lich! Hier, nimm<br>sie ruhig! |

### ⚠ `_ViridianMartClerkParcelQuestText` — Paket abholen (Boxen 3)

> Quick-Start: Paket-Quest entfernt → nicht mehr erreichbar (der `ViridianMart`-Guard überspringt diesen Pfad ohnehin). Keine Kürzung nötig.

> Hinweis: `_ViridianCityOldManHadMyCoffeeNowText` (3 Boxen) wurde bereits separat überarbeitet (Commit „Dialoge an entfernten Botengang angepasst") und ist mit 3 kurzen Boxen schon knapp — hier nicht erneut gekürzt.

---

## Route 1 / Route 22

### `_Route1Youngster1MartSampleText` — Werbegeschenk (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Hi! Ich arbeite<br>in einem<br>PKMN-SUPERMARKT.<br><br>Wir verkaufen<br>viele praktische<br>Dinge! Du findest<br>unseren Laden in<br>VERTANIA CITY.<br><br>Am besten gebe<br>ich Dir ein<br>Werbegeschenk!<br>Hier, bitte! | Hi! Ich arbeite<br>im PKMN-MARKT in<br>VERTANIA CITY.<br><br>Hier, ein<br>Werbegeschenk<br>für Dich! |

### `_Route1Youngster2Text` — Stufen-Tipp (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Siehst Du die<br>Stufen hier?<br><br>Du kannst nicht<br>hinaufklettern,<br>dafür aber<br>herunterspringen!<br><br>So kommst Du viel<br>schneller nach<br>ALABASTIA zurück. | Siehst Du die<br>Stufen? Hoch geht<br>nicht, runter<br>schon!<br><br>So bist Du schnell<br>in ALABASTIA. |

### `_Route22RivalBeforeBattleText1` — Rivale vor Kampf 1 (Boxen 5 → 3)

| Original | Vorschlag |
|----------|-----------|
| `<RIVAL>`: Hey!<br>`<PLAYER>`!<br><br>Bist Du auf<br>dem Weg zur<br>PKMN-LIGA?<br><br>Vergiß es!<br>Wahrscheinlich<br>besitzt Du nicht<br>einmal einen<br>ORDEN!<br><br>Die Wache wird<br>Dich gar nicht<br>erst durchlassen!<br><br>Ach, sind<br>Deine #MON<br>eigentlich<br>stärker geworden? | [Rivale]: Hey,<br>[Name]!<br><br>Auf zur PKMN-LIGA?<br>Vergiß es — ohne<br>ORDEN läßt Dich<br>die Wache nicht<br>durch!<br><br>Sind Deine #MON<br>überhaupt stärker<br>geworden? |

### `_Route22RivalAfterBattleText1` — Rivale nach Kampf 1 (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| In der PKMN-LIGA<br>gibt es viele<br>starke Trainer!<br><br>Ich muß einen Weg<br>finden, an ihnen<br>vorbeizukommen.<br><br>Du solltest<br>aufhören zu<br>bummeln und Dich<br>in Bewegung<br>setzen! | In der PKMN-LIGA<br>warten starke<br>Trainer — da muß<br>ich durch!<br><br>Und Du? Hör auf<br>zu bummeln! |

### `_Route22RivalBeforeBattleText2` — Rivale vor Kampf 2 (Boxen 6 → 3)

| Original | Vorschlag |
|----------|-----------|
| `<RIVAL>`: Was?!<br>`<PLAYER>`!<br><br>Was für eine<br>Überraschung!<br><br>Du bist also auch<br>auf dem Weg zur<br>PKMN-LIGA, oder?<br><br>Du besitzt auch<br>alle ORDEN?<br>Das ist cool!<br><br>`<PLAYER>`, ich<br>werde mich für<br>die PKMN-LIGA<br>aufwärmen, indem<br>ich Dich besiege!<br><br>Also, los geh's! | [Rivale]: Was?!<br>[Name]!<br><br>Auch auf dem Weg<br>zur PKMN-LIGA?<br>Und alle ORDEN?<br>Cool!<br><br>Ich wärm mich an<br>Dir auf! Los<br>geht's! |

### `_Route22RivalAfterBattleText2` — Rivale nach Kampf 2 (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Das war ein gutes<br>Aufwärmtraining!<br>Ich bin gut auf<br>die PKMN-LIGA<br>vorbereitet!<br><br>`<PLAYER>`, auch<br>wenn Du gewonnen<br>hast, mußt Du<br>mehr trainieren!<br><br>Ich glaube, Du<br>bist Dir dessen<br>bewußt! Bis dann! | Gutes Aufwärmen!<br>Ich bin bereit<br>für die PKMN-LIGA!<br><br>[Name], trotz<br>Sieg: trainier<br>mehr! Bis dann! |

---

## Vertania-Wald (Viridian Forest)

### `_ViridianForestYoungster5Text` — keine Bälle (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Verdammt!<br>Mir sind die<br>#BÄLLE<br>ausgegangen!<br><br>Wie fange ich nun<br>bloß #MON?<br><br>Du solltest immer<br>genug #BÄLLE<br>bei Dir haben! | Verdammt, meine<br>#BÄLLE sind alle!<br><br>Hab immer genug<br>#BÄLLE dabei! |

### `_ViridianForestTrainerTips4Text` — Tipps (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| TIPS FÜR TRAINER<br><br>Geschwächte<br>#MON sind<br>leichter zu<br>fangen!<br><br>Sind sie bei<br>Kräften, könnten<br>sie fliehen! | TIPS FÜR TRAINER<br><br>Geschwächte #MON<br>fängt man leichter<br>— bei voller Kraft<br>fliehen sie oft! |

---

## Marmoria City (Pewter)

### `_PewterGymBrockPreBattleText` — Rocko vor Kampf (Boxen 4 → 3)

| Original | Vorschlag |
|----------|-----------|
| Ich bin der<br>ARENALEITER von<br>MARMORIA CITY,<br>ROCKO!<br><br>Meine Devise ist<br>eine steinharte<br>Verteidigung und<br>felsenfeste<br>Entschlossenheit!<br><br>Deshalb<br>trainiere ich<br>STEIN-#MON!<br><br>Willst Du es noch<br>immer mit mir<br>aufnehmen? OK!<br>Zeige mir, wie<br>gut Du bist! | Ich bin ROCKO,<br>ARENALEITER von<br>MARMORIA CITY!<br><br>Steinharte Abwehr<br>ist meine Devise —<br>drum trainiere ich<br>STEIN-#MON!<br><br>Du willst kämpfen?<br>OK! Zeig, was Du<br>kannst! |

### `_PewterGymBrockReceivedBoulderBadgeText` — Felsorden (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Ich habe<br>Dich falsch<br>eingeschätzt!<br><br>Nimm den<br>FELSORDEN als<br>Zeichen meiner<br>Ehrerbietung!<br><br>`<PLAYER>` erhält<br>den FELSORDEN! | Ich habe Dich<br>unterschätzt!<br><br>Nimm den FELSORDEN!<br>[Name] erhält<br>den FELSORDEN! |

### `_PewterGymBrockBoulderBadgeInfoText` — Orden-Info (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Das ist ein<br>offizieller ORDEN<br>der PKMN-LIGA!<br><br>Die #MON<br>der Person, die<br>den ORDEN trägt,<br>werden stärker!<br><br>Von nun an können<br>Deine #MON<br>jederzeit BLITZ<br>einsetzen! | Ein offizieller<br>ORDEN der PKMN-LIGA<br>— er macht Deine<br>#MON stärker!<br><br>Ab jetzt können<br>sie jederzeit<br>BLITZ einsetzen! |

### `_PewterGymBrockPostBattleAdviceText` — Rat (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Es gibt die<br>verschiedensten<br>Trainer auf der<br>Welt!<br><br>Du scheinst ein<br>sehr begabter<br>#MON-TRAINER<br>zu sein!<br><br>Gehe in die<br>PKMN-ARENA von<br>AZURIA CITY und<br>teste dort Dein<br>Können! | Du bist ein<br>begabter Trainer!<br><br>Teste Dich als<br>nächstes in der<br>ARENA von AZURIA<br>CITY! |

### `_PewterGymGuidePreAdviceText` — Arena-Helfer (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Hallo! Sieht aus,<br>als hättest Du<br>das Zeug zu einem<br>#MON-CHAMPION!<br><br>Ich bin kein<br>Trainer, aber ich<br>kann Dir ein paar<br>Tips geben!<br><br>Laß mich Dir den<br>Weg zum Erfolg<br>zeigen! | Du hast das Zeug<br>zum #MON-CHAMPION!<br><br>Ich bin kein<br>Trainer, aber ich<br>geb Dir ein paar<br>Tips! |

### `_TM34ExplanationText` (Pewter Gym) — TM-Erklärung (Boxen 5 → 3)

| Original | Vorschlag |
|----------|-----------|
| Eine TM enthält<br>Attacken, die<br>#MON erlernen<br>können!<br><br>Man kann eine TM<br>nur ein einziges<br>Mal verwenden!<br>Wähle sorgfältig<br>jenes #MON<br>aus, dem Du eine<br>TM geben<br>möchtest!<br><br>TM34 ist<br>GEDULD!<br><br>Dein #MON<br>absorbiert die<br>gegnerischen<br>Attacken und<br>kontert mit<br>doppelter Kraft! | Eine TM lehrt ein<br>#MON eine Attacke<br>— aber nur EINMAL!<br>Wähle gut.<br><br>TM34 ist GEDULD:<br>Dein #MON schluckt<br>einen Treffer und<br>kontert doppelt<br>hart! |

### `_PewterNidoranHouseMiddleAgedManText` — Außenseiter (Boxen 4 → 2)

| Original | Vorschlag |
|----------|-----------|
| Unser #MON ist<br>ein Außenseiter,<br>deshalb ist es<br>schwer zu<br>erziehen!<br><br>Ein Außenseiter<br>ist ein #MON,<br>das man in einem<br>Tausch erhält.<br><br>Es entwickelt<br>sich rasch, doch<br>im Kampf kann es<br>vorkommen, daß es<br>unerfahrenen<br>Trainern nicht<br>gehorcht!<br><br>Wenn wir doch nur<br>ein paar ORDEN<br>hätten... | Ein Außenseiter<br>(per Tausch erhal-<br>ten) wächst schnell,<br>gehorcht aber<br>unerfahrenen<br>Trainern oft nicht.<br><br>Hätten wir nur<br>ein paar ORDEN... |

### `_PewterPokecenterGentlemanText` — Team Rocket (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Was!?<br><br>Das TEAM ROCKET<br>befindet sich auf<br>dem MONDBERG?<br>Das muß ich<br>sofort melden!<br><br>Verschwinde! | Was!? TEAM ROCKET<br>am MONDBERG?<br>Das muß ich<br>sofort melden!<br><br>Verschwinde! |

---

## Mondberg (Mt. Moon)

### `_MtMoonB2FSuperNerdTheyreBothMineText` — Fossil-Streit (Boxen 3 → 2)

| Original | Vorschlag |
|----------|-----------|
| Stop! Hände weg!<br><br>Wer zuerst kommt,<br>mahlt zuerst!<br><br>Die Fossilien<br>gehören MIR! | Stop! Hände weg!<br><br>Wer zuerst kommt...<br>— die Fossilien<br>gehören MIR! |

---

## Azuria (Cerulean) + Umgebung

Umgesetzt in:

- `text/CeruleanCity.asm`
- `text/CeruleanGym.asm`
- `text/BillsHouse.asm`
- `text/BikeShop.asm`
- `text/CeruleanBadgeHouse.asm`
- `text/Route24.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_CeruleanCityRivalPreBattleText` — Rivale vor Kampf | `text/CeruleanCity.asm` | 4 → 3 | Rivale begrüßt `[Name]`, prahlt knapp mit seinem Fortschritt und fordert direkt zum Vergleich der gefangenen #MON auf. |
| `_CeruleanCityRivalIWentToBillsText` — Rivale nach Kampf / Bill-Hinweis | `text/CeruleanCity.asm` | 7 → 5 | Bill-Besuch, #DEX-Einträge und PC-Lagersystem bleiben erhalten; Wiederholungen und Dankes-Hinweis entfernt. |
| `_CeruleanCityGuardText` — Wachmann vor Einbruchshaus | `text/CeruleanCity.asm` | 3 → 3 | Inhalt bleibt vollständig, aber TEAM-ROCKET-Erklärung und Polizei-Hinweis sind kompakter. |
| `_CeruleanCityCooltrainerF1SlowbroWithdrawText` — LAHMUS gehorcht nicht | `text/CeruleanCity.asm` | 3 → 3 | Kontroll-/Gehorsam-Hinweis auf Trainerkünste verdichtet. |
| `_CeruleanGymMistyPreBattleText` — Misty vor Kampf | `text/CeruleanGym.asm` | 4 → 4 | Profistrategie und Wasser-Offensive bleiben, Formulierungen gekürzt. |
| `_CeruleanGymMistyCascadeBadgeInfoText` — Quellorden-Info | `text/CeruleanGym.asm` | 5 → 3 | Level-30-Gehorsam, Außenseiter, ZERSCHNEIDER und TM-Geschenk bleiben erhalten. |
| `_CeruleanGymMistyReceivedCascadeBadgeText` — Orden erhalten | `text/CeruleanGym.asm` | 3 → 2 | Füllbox „Alles klar!“ entfernt. |
| `_CeruleanGymGymGuideChampInMakingText` — Arena-Helfer | `text/CeruleanGym.asm` | 5 → 4 | Wasser-Typ, Pflanzen- und Elektro-Tipp bleiben; separater „Tip“-Vorspann entfernt. |
| `_BillsHouseBillImNotAPokemonText` — Bill im #MON-Körper | `text/BillsHouse.asm` | 4 → 4 | Bills Identität, Experiment und Bitte um Hilfe bleiben, Erklärblock deutlich kürzer. |
| `_BillsHouseBillThankYouText` — Bill bedankt sich | `text/BillsHouse.asm` | 3 → 3 | Sammlung und Ticket-Übergabe bleiben, Dankesformel gestrafft. |
| `_BikeShopClerkOhThatsAVoucherText` — RAD-COUPON | `text/BikeShop.asm` | 3 → 2 | Coupon-Erkennung und Übergabe in zwei Boxen zusammengelegt. |
| `_CeruleanBadgeHouseMiddleAgedManText` — Ordenhaus-Einleitung | `text/CeruleanBadgeHouse.asm` | 3 → 2 | Orden-Geheimnis bleibt, zweite und dritte Box kombiniert. |
| `_CeruleanBadgeHouseCascadeBadgeText` — Quellorden im Ordenhaus | `text/CeruleanBadgeHouse.asm` | 3 → 2 | Levelgrenze und ZERSCHNEIDER-Hinweis bleiben. |
| `_CeruleanBadgeHouseRainbowBadgeText` — Farborden im Ordenhaus | `text/CeruleanBadgeHouse.asm` | 3 → 2 | Levelgrenze und STÄRKE-Hinweis bleiben. |
| `_Route24CooltrainerM1JoinTeamRocketText` — Nugget-Brücke / Rocket-Rekrutierer | `text/Route24.asm` | 8 → 5 | Rekrutierungsdruck bleibt, mehrere reine Wiederholungsboxen entfernt. |

Hinweis: Einige Dialoge bleiben absichtlich bei drei oder mehr Boxen, weil sie mehrere Gameplay-Informationen transportieren. Dort wurde stattdessen die Zeilenzahl pro Box reduziert.

---

## Orania (Vermilion) + M.S. Anne

Umgesetzt in:

- `text/VermilionCity.asm`
- `text/VermilionGym.asm`
- `text/VermilionMart.asm`
- `text/VermilionPidgeyHouse.asm`
- `text/VermilionOldRodHouse.asm`
- `text/SSAnne1F.asm`
- `text/SSAnne2F.asm`
- `text/SSAnneCaptainsRoom.asm`
- `text/SSAnneKitchen.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_VermilionCitySailor1YouNeedATicketText` — Hafenwache ohne Ticket | `text/VermilionCity.asm` | 3 → 2 | Entschuldigung und Ticket-Hinweis zusammengelegt. |
| `_VermilionCityNoticeSignText` — Route-12-Umleitung | `text/VermilionCity.asm` | 4 → 3 | Überschrift und Blockade-Hinweis in eine Box gezogen; Umleitung und Polizei-Absender bleiben. |
| `_VermilionGymLTSurgePreBattleText` — Major Bob vor Kampf | `text/VermilionGym.asm` | 5 → 4 | Feldzug-Erzählung gestrafft, Elektro-Drohung bleibt. |
| `_VermilionMartCooltrainerMText` — Rocket handelt mit #MON | `text/VermilionMart.asm` | 3 → 2 | Seltene-#MON-Handel und Aussetzen nicht seltener #MON zusammengefasst. |
| `_VermilionPidgeyHouseLetterText` — Brief nach Saffronia | `text/VermilionPidgeyHouse.asm` | 3 → 3 | Inhalt bleibt, Schlussbox deutlich kürzer. |
| `_VermilionOldRodHouseFishingGuruDoYouLikeToFishText` — Profiangler-Frage | `text/VermilionOldRodHouse.asm` | 3 → 2 | Liebe zum Angeln und Frage zusammengelegt. |
| `_VermilionOldRodHouseFishingGuruTakeThisText` — Angel erhalten | `text/VermilionOldRodHouse.asm` | 3 → 3 | Item-Übergabe bleibt als eigene Box; Einleitung knapp belassen. |
| `_VermilionOldRodHouseFishingGuruFishingIsAWayOfLifeText` — Angeln als Leidenschaft | `text/VermilionOldRodHouse.asm` | 3 → 2 | Leidenschafts- und Fang-Hinweis zusammengeführt. |
| `_SSAnne1FWaiterText` — Steward | `text/SSAnne1F.asm` | 3 → 3 | Matrosen-Ton bleibt, Zeilen gekürzt. |
| `_SSAnne2FRivalText` — Rivale an Bord | `text/SSAnne2F.asm` | 7 → 5 | Einladungsspott entfernt, #DEX-Vergleich und Fanghinweis bleiben. |
| `_SSAnne2FRivalCutMasterText` — Zerschneider-Meister | `text/SSAnne2F.asm` | 4 → 3 | Nützlichkeits-Hinweis und Besuchsaufforderung zusammengelegt. |
| `_SSAnneCaptainsRoomRubCaptainsBackText` — Kapitän massieren | `text/SSAnneCaptainsRoom.asm` | 3 → 2 | Massage-Aktion und Geräuschzeilen in eine Box gezogen. |
| `_SSAnneCaptainsRoomCaptainIFeelMuchBetterText` — VM01 erhalten | `text/SSAnneCaptainsRoom.asm` | 6 → 5 | „Ich könnte es beibringen“-Umweg entfernt; ZERSCHNEIDER-Erklärung bleibt. |
| `_SSAnneKitchenCook7MainCourseIsText` — Küchenchef | `text/SSAnneKitchen.asm` | 5 → 5* | Nur die Einleitung gekürzt; die gezählten Folgeboxen sind Auswahltexte des Menüs. |

\* Der Küchenchef-Dialog springt nach `prompt` in eigene Antwortlabels (`SSAnneKitchenCook7...Text`). Die Boxenzahl ist daher technisch nicht direkt mit normalen Dialogen vergleichbar.

Hinweis: Die ursprüngliche Schätzung von 16 Einträgen wurde nach Scannerlauf auf 14 echte Kandidaten korrigiert.

---

## Prismania (Celadon)

Umgesetzt in:

- `text/CeladonCity.asm`
- `text/CeladonDiner.asm`
- `text/CeladonGym.asm`
- `text/CeladonMansion3F.asm`
- `text/CeladonMart1F.asm`
- `text/CeladonMart3F.asm`
- `text/CeladonMart4F.asm`
- `text/CeladonMart5F.asm`
- `text/CeladonMartRoof.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_CeladonCityGramps3Text` — TM-Geschenk | `text/CeladonCity.asm` | 3 → 3 | Ansprache gekürzt, Geschenk-Hinweis bleibt separat. |
| `_CeladonCityGramps3TM41ExplanationText` — TM41 | `text/CeladonCity.asm` | 3 → 2 | CHANEIRA-Exklusivität in eine Erklärung gezogen. |
| `_CeladonCityTrainerTips1Text` — Kampfitems | `text/CeladonCity.asm` | 4 → 4 | X-TREFFER, ANGRIFFPLUS und Einkaufszentrum bleiben, Zeilen deutlich kürzer. |
| `_CeladonCityTrainerTips2Text` — MEGABLOCK | `text/CeladonCity.asm` | 3 → 3 | Einkaufszentrum-Hinweis gestrafft. |
| `_CeladonDinerGymGuideImFlatOutBustedText` — Münzkorb | `text/CeladonDiner.asm` | 4 → 3 | Pleite- und Nie-wieder-zocken-Box zusammengelegt. |
| `_CeladonGymErikaPreBattleText` — Erika vor Kampf | `text/CeladonGym.asm` | 6 → 5 | Natur-/Pflanzen-Ton bleibt, Kampfannahme und Siegesansage zusammengelegt. |
| `_CeladonGymErikaReceivedRainbowBadgeText` — Farborden | `text/CeladonGym.asm` | 3 → 2 | Anerkennung und Orden-Übergabe kombiniert. |
| `_CeladonGymRainbowBadgeInfoText` — Farborden-Info | `text/CeladonGym.asm` | 3 → 3 | STÄRKE-Hinweis gekürzt. |
| `_TM21ExplanationText` — MEGASAUGER | `text/CeladonGym.asm` | 3 → 3 | KP-Rückgewinn klarer und kürzer formuliert. |
| `_CeladonMansion3FWriterText` — GAME-FREAK-Autor | `text/CeladonMansion3F.asm` | 3 → 2 | MISTY/SABRINA-Nachsatz kombiniert. |
| `_CeladonMansion3FGameDesignerText` — Game Designer | `text/CeladonMansion3F.asm` | 4 → 3 | Gestaltung und #DEX-Motivation zusammengezogen. |
| `_CeladonMart1FDirectorySignText` — Kaufhaus-Tafel | `text/CeladonMart1F.asm` | 6 → 4 | Etagenübersicht dichter gruppiert. |
| `_CeladonMart3FGameBoyKid3Text` — GEOROK-Tauschentwicklung | `text/CeladonMart3F.asm` | 4 → 2 | Sammler- und Entwicklungsreaktion zusammengelegt. |
| `_CeladonMart4FCurrentFloorSignText` — Geschenkartikel | `text/CeladonMart4F.asm` | 3 → 2 | Sonderangebote in die Etagenbox integriert. |
| `_CeladonMart5FGentlemanText` — Vitamine I | `text/CeladonMart5F.asm` | 3 → 2 | KALZIUM/CARBON-Erklärung kombiniert. |
| `_CeladonMart5FSailorText` — Vitamine II | `text/CeladonMart5F.asm` | 3 → 2 | PROTEIN/EISEN-Erklärung kombiniert. |
| `_CeladonMartRoofLittleGirlYayFreshWaterText` — Tafelwasser | `text/CeladonMartRoof.asm` | 4 → 2 | Dank und Geschenk-Hinweis zusammengelegt. |
| `_CeladonMartRoofLittleGirlTM13ExplanationText` — EISSTRAHL | `text/CeladonMartRoof.asm` | 3 → 3 | Erklärung kompakter formuliert. |
| `_CeladonMartRoofLittleGirlYaySodaPopText` — Sprudel | `text/CeladonMartRoof.asm` | 4 → 2 | Dank und Geschenk-Hinweis zusammengelegt. |
| `_CeladonMartRoofLittleGirlTM48ExplanationText` — STEINHAGEL | `text/CeladonMartRoof.asm` | 3 → 3 | Erklärung kompakter formuliert. |
| `_CeladonMartRoofLittleGirlYayLemonadeText` — Limonade | `text/CeladonMartRoof.asm` | 4 → 2 | Dank und Geschenk-Hinweis zusammengelegt. |

Hinweis: Die ursprüngliche Schätzung von 19 Einträgen wurde nach Scannerlauf auf 21 Kandidaten korrigiert.

---

## Lavandia + Pokémon-Turm

Umgesetzt in:

- `text/LavenderCuboneHouse.asm`
- `text/LavenderMart.asm`
- `text/LavenderTown.asm`
- `text/PokemonTower2F.asm`
- `text/PokemonTower7F.asm`
- `text/MrFujisHouse.asm`
- `text/NameRatersHouse.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_LavenderCuboneHouseBrunetteGirlPoorCubonesMotherText` — Tragossos Mutter | `text/LavenderCuboneHouse.asm` | 3 → 2 | Mutter- und Rocket-Hinweis zusammengelegt. |
| `_LavenderMartBaldingGuyText` — X-Items | `text/LavenderMart.asm` | 3 → 3 | Kampfitem-Erklärung und Kauf-Frage gestrafft. |
| `_LavenderTownSilphScopeSignText` — SILPH SCOPE | `text/LavenderTown.asm` | 3 → 2 | Werbeschild kompakter. |
| `_PokemonTower2FRivalHowsYourDexText` — Rivale nach Kampf | `text/PokemonTower2F.asm` | 4 → 3 | TRAGOSSO/KNOGGA-Hinweis bleibt, Abschied zusammengelegt. |
| `_PokemonTower7FMrFujiRescueText` — Mr. Fuji gerettet | `text/PokemonTower7F.asm` | 6 → 5 | KNOGGA-Frieden bleibt, Dankeswiederholung entfernt. |
| `_MrFujisHouseLittleGirlThisIsMrFujisHouseText` — Fujis Haus | `text/MrFujisHouse.asm` | 3 → 2 | Fürsorge und verwaiste #MON kombiniert. |
| `_MrFujisHouseMrFujiIThinkThisMayHelpYourQuestText` — Pokéflöte erhalten | `text/MrFujisHouse.asm` | 3 → 3 | Liebe/Respekt-Text kürzer, Geschenk-Hinweis bleibt. |
| `_MrFujisHouseMrFujiPokeFluteExplanationText` — Pokéflöte | `text/MrFujisHouse.asm` | 3 → 3 | Erklärung direkter formuliert. |
| `_MrFujisHouseMrFujiPokedexText` — Gewinnspiel-Text | `text/MrFujisHouse.asm` | 3 → 2 | Teilnahmekarten-Hinweis kombiniert. |
| `_NameRatersHouseNameRaterGiveItANiceNameText` — Spitzname ändern | `text/NameRatersHouse.asm` | 3 → 2 | Nachfrage zum Ändern gekürzt. |

Hinweis: Die ursprüngliche Schätzung von 7 Einträgen wurde nach Scannerlauf auf 10 Kandidaten korrigiert.

---

## Fuchsania + Safari-Zone

Umgesetzt in:

- `text/FuchsiaBillsGrandpasHouse.asm`
- `text/FuchsiaGoodRodHouse.asm`
- `text/FuchsiaGym.asm`
- `text/FuchsiaGym_2.asm`
- `text/SafariZoneGate.asm`
- `text/SafariZoneNorth.asm`
- `text/SafariZoneSecretHouse.asm`
- `text/SafariZoneWest.asm`
- `text/WardensHouse.asm`
- `text/Route12SuperRodHouse.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_FuchsiaBillsGrandpasHouseBillsGrandpaText` | `text/FuchsiaBillsGrandpasHouse.asm` | 3 → 2 | Bill-Familienhinweis kombiniert. |
| `_FuchsiaGoodRodHouseFishingGuruText` | `text/FuchsiaGoodRodHouse.asm` | 3 → 2 | Angelliebe und Frage zusammengelegt. |
| `_FuchsiaGoodRodHouseFishingGuruReceivedGoodRodText` | `text/FuchsiaGoodRodHouse.asm` | 3 → 3 | Item-Übergabe bleibt, Einleitung unverändert knapp. |
| `_FuchsiaGymKogaBeforeBattleText` | `text/FuchsiaGym.asm` | 4 → 3 | Schreckens-/Gift-Drohung zusammengelegt. |
| `_FuchsiaGymKogaSoulBadgeInfoText` | `text/FuchsiaGym_2.asm` | 3 → 2 | SURFER- und Geschenk-Hinweis kombiniert. |
| `_FuchsiaGymKogaTM06ExplanationText` | `text/FuchsiaGym_2.asm` | 3 → 3 | TOXIN-Erklärung klarer formuliert. |
| `_FuchsiaGymRocker1BattleText` | `text/FuchsiaGym_2.asm` | 3 → 2 | Strategie-vs.-Kraft-Kern bleibt. |
| `_FuchsiaGymGymGuideChampInMakingText` | `text/FuchsiaGym_2.asm` | 4 → 3 | Unsichtbare-Mauern-Hinweis verdichtet. |
| `_SafariZoneGateSafariZoneWorker1ThatllBe500PleaseText` | `text/SafariZoneGate.asm` | 3 → 2 | SAFARI-BÄLLE-Ausgabe in die Ball-Erklärung gezogen. |
| `_SafariZoneGateSafariZoneWorker2SafariZoneExplanationText` | `text/SafariZoneGate.asm` | 4 → 4 | Regeltext gekürzt, Spielende und Box-Hinweis kompakter. |
| `_SafariZoneNorthTrainerTips2Text` | `text/SafariZoneNorth.asm` | 3 → 2 | Gras-/Aufscheuchen-Hinweis kombiniert. |
| `_SafariZoneSecretHouseFishingGuruYouHaveWonText` | `text/SafariZoneSecretHouse.asm` | 4 → 3 | Preis- und Glückwunschbox zusammengelegt. |
| `_SafariZoneSecretHouseFishingGuruHM03ExplanationText` | `text/SafariZoneSecretHouse.asm` | 4 → 4 | SURFER- und VM-Wiederverwendung kürzer. |
| `_SafariZoneWestFindWardensTeethSignText` | `text/SafariZoneWest.asm` | 3 → 2 | Finder-Hinweis in Belohnungsbox integriert. |
| `_SafariZoneWestTrainerTipsText` | `text/SafariZoneWest.asm` | 3 → 2 | Erforsche-/Haus-Hinweis kombiniert. |
| `_WardensHouseWardenHM04ExplanationText` | `text/WardensHouse.asm` | 5 → 4 | STÄRKE bleibt, Geheimhaus-/SURFER-Hinweis zusammengelegt. |
| `_Route12SuperRodHouseFishingGuruDoYouLikeToFishText` | `text/Route12SuperRodHouse.asm` | 3 → 2 | Angelliebe und Frage zusammengelegt. |
| `_Route12SuperRodHouseFishingGuruReceivedSuperRodText` | `text/Route12SuperRodHouse.asm` | 3 → 3 | Item-Übergabe bleibt. |
| `_Route12SuperRodHouseFishingGuruFishingWayOfLifeText` | `text/Route12SuperRodHouse.asm` | 3 → 3 | Kunst-/Fang-Hinweis knapper. |
| `_Route12SuperRodHouseFishingGuruTryFishingText` | `text/Route12SuperRodHouse.asm` | 3 → 3 | SUPERANGEL-Erklärung deutlich verdichtet. |

Hinweis: Die ursprüngliche Schätzung von 13 Einträgen wurde nach Scannerlauf auf 20 Kandidaten korrigiert.

---

## Saffronia + Silph Co.

Umgesetzt in:

- `text/SaffronCity.asm`
- `text/SaffronGates.asm`
- `text/SaffronGym.asm`
- `text/SilphCo7F.asm`
- `text/SilphCo11F.asm`
- `text/FightingDojo.asm`
- `text/CopycatsHouse2F.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_SaffronCityTrainerTips1Text` | `text/SaffronCity.asm` | 3 → 3 | HYPERHEILER-Hinweis gekürzt. |
| `_SaffronCityTrainerTips2Text` | `text/SaffronCity.asm` | 3 → 3 | SUPERBALL-Tipp gestrafft. |
| `_SaffronGateGuardGeeImThirstyText` | `text/SaffronGates.asm` | 3 → 2 | Durst- und Sperrhinweis kompakter. |
| `_SaffronGymSabrinaText` | `text/SaffronGym.asm` | 4 → 3 | Löffel-/Kampfpassage zusammengelegt. |
| `_SaffronGymSabrinaReceivedMarshBadgeText` | `text/SaffronGym.asm` | 3 → 2 | Ausrede und SUMPFORDEN-Übergabe kombiniert. |
| `_SaffronGymSabrinaMarshBadgeInfoText` | `text/SaffronGym.asm` | 4 → 3 | Level-70- und Kontrolle-Hinweis verdichtet. |
| `_SaffronGymGuideChampInMakingText` | `text/SaffronGym.asm` | 4 → 3 | Kampf-#MON-Warnung zusammengelegt. |
| `_SilphCo11FSilphPresidentText` | `text/SilphCo11F.asm` | 5 → 4 | Dankeswiederholungen reduziert. |
| `_SilphCo11FSilphPresidentMasterBallDescriptionText` | `text/SilphCo11F.asm` | 4 → 4 | MEISTERBALL-Erklärung kompakter. |
| `_SilphCo11FGiovanniText` | `text/SilphCo11F.asm` | 4 → 3 | Erwachsenen-Geschäfte und Drohung kombiniert. |
| `_SilphCo11FGiovanniYouRuinedOurPlansText` | `text/SilphCo11F.asm` | 4 → 4 | Rocket-Ideologie und Abgang gekürzt. |
| `_SilphCo7FSilphWorkerM1LaprasDescriptionText` | `text/SilphCo7F.asm` | 4 → 3 | LAPRAS-Herkunft und Eignung zusammengelegt. |
| `_SilphCo7FRivalWaitedHereText` | `text/SilphCo7F.asm` | 3 → 3 | Saffronia-Beobachtung gekürzt. |
| `_SilphCo7FRivalGoodLuckToYouText` | `text/SilphCo7F.asm` | 7 → 5 | #DEX-, Liga- und Top-Vier-Monolog gestrafft. |
| `_FightingDojoKarateMasterText` | `text/FightingDojo.asm` | 4 → 3 | Herausforderung und Startansage kombiniert. |
| `_FightingDojoKarateMasterIWillGiveYouAPokemonText` | `text/FightingDojo.asm` | 4 → 4 | Emblem-Bitte kürzer, Geschenk bleibt. |
| `_CopycatsHouse2FCopycatDoYouLikePokemonText` | `text/CopycatsHouse2F.asm` | 5 → 4 | Nachahmerinnen-Wechsel kompakter. |
| `_CopycatsHouse2FCopycatTM31PreReceiveText` | `text/CopycatsHouse2F.asm` | 3 → 2 | Dank und TM-Übergabe kombiniert. |
| `_CopycatsHouse2FCopycatTM31Explanation1Text` | `text/CopycatsHouse2F.asm` | 3 → 3 | Kurzer Erklärungstext belassen. |
| `_CopycatsHouse2FCopycatTM31Explanation2Text` | `text/CopycatsHouse2F.asm` | 4 → 3 | Rückfrage zur Nachahmerei gekürzt. |
| `_CopycatsHouse2FPCMySecretsText` | `text/CopycatsHouse2F.asm` | 5 → 4 | Geheimnisse-Liste verdichtet. |

Hinweis: Die ursprüngliche Schätzung von 14 Einträgen wurde nach Scannerlauf auf 21 Kandidaten korrigiert.

---

## Zinnober + Pokémon-Haus

Umgesetzt in:

- `text/CinnabarGym.asm`
- `text/CinnabarLabFossilRoom.asm`
- `text/CinnabarLabMetronomeRoom.asm`
- `text/CinnabarPokecenter.asm`
- `text/PokemonMansion3F.asm`
- `text/PokemonMansionB1F.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_CinnabarGymBlainePreBattleText` | `text/CinnabarGym.asm` | 4 → 3 | Feuer-Drohung und FEUERHEILER-Hinweis kombiniert. |
| `_CinnabarGymBlaineVolcanoBadgeInfoText` | `text/CinnabarGym.asm` | 3 → 3 | Geschenk-Hinweis knapper. |
| `_CinnabarGymBlaineTM38ExplanationText` | `text/CinnabarGym.asm` | 4 → 4 | FEUERSTURM-Erklärung gestrafft. |
| `_CinnabarGymGymGuideChampInMakingText` | `text/CinnabarGym.asm` | 4 → 3 | Wasser- und FEUERHEILER-Tipp zusammengelegt. |
| `_CinnabarLabFossilRoomScientist1Text` | `text/CinnabarLabFossilRoom.asm` | 4 → 3 | Forschungsleitung und Fossilthema kombiniert. |
| `_CinnabarLabFossilRoomScientist1FossilIsBackToLifeText` | `text/CinnabarLabFossilRoom.asm` | 3 → 2 | Wiederbelebung und Ergebnis zusammengezogen. |
| `_CinnabarLabFossilRoomScientist1SeesFossilText` | `text/CinnabarLabFossilRoom.asm` | 3 → 3 | Wiederbelebungs-Erklärung kürzer. |
| `_CinnabarLabMetronomeRoomPCText` | `text/CinnabarLabMetronomeRoom.asm` | 7 → 5 | Leere Ellipsen-Boxen entfernt. |
| `_CinnabarPokecenterGentlemanText` | `text/CinnabarPokecenter.asm` | 3 → 3 | Schlussbox verkürzt. |
| `_PokemonMansion3FDiaryText` | `text/PokemonMansion3F.asm` | 3 → 2 | MEW-/MEWTU-Eintrag kombiniert. |
| `_PokemonMansionB1FDiaryText` | `text/PokemonMansionB1F.asm` | 3 → 3 | Wutausbruch-Eintrag klarer und kürzer. |

---

## Restliche Arenen + Routen-Tipps

Umgesetzt in:

- `text/ViridianGym.asm`
- `text/Route11Gate1F.asm`
- `text/Route11Gate2F.asm`
- `text/Route15Gate2F.asm`
- `text/Route17.asm`
- `text/Route23.asm`
- `text/IndigoPlateauLobby.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_ViridianGymGiovanniPreBattleText` | `text/ViridianGym.asm` | 4 → 4 | Wiedersehen/Gnadenlosigkeit gestrafft. |
| `_ViridianGymGiovanniPostBattleAdviceText` | `text/ViridianGym.asm` | 3 → 2 | Auflösung/Abschied kombiniert. |
| `_ViridianGymGiovanniEarthBadgeInfoText` | `text/ViridianGym.asm` | 4 → 3 | Können- und Liga-Zugang zusammengelegt. |
| `_ViridianGymGiovanniTM27ExplanationText` | `text/ViridianGym.asm` | 3 → 3 | GEOFISSUR-Herkunft gekürzt. |
| `_ViridianGymGuidePreBattleText` | `text/ViridianGym.asm` | 4 → 3 | Gefährlichster-Leiter- und Boden-Tipp kombiniert. |
| `_Route11Gate1FGuardText` | `text/Route11Gate1F.asm` | 3 → 2 | Namensbewerter-/Ändern-Hinweis zusammengelegt. |
| `_Route11Gate2FOaksAideItemfinderDescriptionText` | `text/Route11Gate2F.asm` | 3 → 3 | DETEKTOR-Einschränkung gekürzt. |
| `_Route15Gate2FOaksAideExpAllText` | `text/Route15Gate2F.asm` | 3 → 3 | PC-Ablegen-Hinweis gekürzt. |
| `_Route17TrainerTips1Text` | `text/Route17.asm` | 3 → 3 | Individualwerte-Tipp kompakter. |
| `_Route23YouDontHaveTheBadgeYetText` | `text/Route23.asm` | 3 → 3 | Liga-Zulassung knapper. |
| `_IndigoPlateauLobbyGymGuideText` | `text/IndigoPlateauLobby.asm` | 3 → 3 | Neustart-Hinweis gekürzt. |

Hinweis: Bereits erledigte Route-1/22/24- und Superangel-Texte tauchten im Restscan erneut auf und wurden hier nicht doppelt gezählt.

---

## Top Vier + Champion + Ruhmeshalle

Umgesetzt in:

- `text/LoreleisRoom.asm`
- `text/BrunosRoom.asm`
- `text/AgathasRoom.asm`
- `text/LancesRoom.asm`
- `text/ChampionsRoom.asm`
- `text/HallOfFame.asm`

### Übersicht

| Dialog | Datei | Boxen | Umsetzung |
|--------|-------|-------|-----------|
| `_LoreleisRoomLoreleiBeforeBattleText` | `text/LoreleisRoom.asm` | 6 → 5 | Separate Eis-Attacken-Box entfernt, Drohung bleibt. |
| `_BrunoBeforeBattleText` | `text/BrunosRoom.asm` | 6 → 4 | Training, Spieleransprache und Angriffsruf zusammengezogen. |
| `_AgathaBeforeBattleText` | `text/AgathasRoom.asm` | 5 → 4 | Eich-Rückblick und #DEX-Kritik kombiniert. |
| `_LancesRoomLanceBeforeBattleText` | `text/LancesRoom.asm` | 7 → 5 | Drachenstärke und Schicksalsdrohung verdichtet. |
| `_LancesRoomLanceAfterBattleText` | `text/LancesRoom.asm` | 6 → 4 | Champion-Enthüllung straffer. |
| `_ChampionsRoomRivalIntroText` | `text/ChampionsRoom.asm` | 11 → 7 | #DEX-/Team-Aufbau und Champion-Prahlerei deutlich gekürzt. |
| `_RivalDefeatedText` | `text/ChampionsRoom.asm` | 4 → 3 | Niederlagenklage zusammengelegt. |
| `_RivalVictoryText` | `text/ChampionsRoom.asm` | 4 → 4 | Spott kompakter. |
| `_ChampionsRoomRivalAfterBattleText` | `text/ChampionsRoom.asm` | 4 → 3 | Aufziehen-/Champion-Erkenntnis kombiniert. |
| `_ChampionsRoomOakCongratulatesPlayerText` | `text/ChampionsRoom.asm` | 3 → 3 | Abschlusslob gekürzt. |
| `_ChampionsRoomOakDisappointedWithRivalText` | `text/ChampionsRoom.asm` | 6 → 4 | Enttäuschung und Lektion verdichtet. |
| `_ChampionsRoomOakComeWithMeText` | `text/ChampionsRoom.asm` | 4 → 3 | Beziehungs-Lob und Folge-mir-Hinweis kombiniert. |
| `_HallOfFameOakText` | `text/HallOfFame.asm` | 6 → 5 | Ruhmeshallen-Erklärung und Spielerwürdigung gekürzt. |

Hinweis: Die ursprüngliche Schätzung von 12 Einträgen wurde nach Scannerlauf auf 13 Kandidaten korrigiert.

---

Alle geplanten Regionen aus der Fortschrittstabelle sind abgearbeitet.
