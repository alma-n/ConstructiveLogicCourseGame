
import Game.Metadata

World "Funktio"
Level 1

Title "Identiteettifunktio"

Introduction "
Konstruktiivisessa logiikassa **funktio** on sama asia kuin implikaatio. Esim. funktio tyypistä `A` tyyppiin `A` voidaan tulkita tarkoittavan `A`:sta seuraa `A`, eli `A → A`.

Huomaa että **objects** listassa ei olekaan `A : Prop` vaan `A : Type`. Se tarkoittaa että `A` on tyyppi eikä väite. Tyypit voivat sisältää monta alkioita, kun taas väitteet (`Prop`) ovat joko tyhjiä (`False`) tai yksiöitä (`True`).

Esimerkiksi luonnolliset luvut `ℕ` sisältävät äärettömän määrän alkioita, jotka eivät ole yhtäsuuria keskenään.

Tässä maailmassa saa ainoastaan käyttää `exact`-taktiikkaa, ja kaikki tehtävät tulee ratkaista kirjoittamalla funktioita.

Funktio tyyppiä `A → A` voidaan kirjoittaa `fun a => a`.
"

Statement (A : Type) : A → A := by
  Hint "`fun a => a : A → A`"
  exact fun a => a

OnlyTactic exact
