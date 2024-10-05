import Game.Metadata

World "Peruslogiikka"
Level 2

Title "Totuudesta seuraa tosia asioita"

Introduction "
... tai oikeastaan mistä tahansa seuraa tosia asioita.
"

Statement : True → True := by
  Hint "Aloita olettamalla implikaation vasen puoli (`intro`)"
  intro h
  Hint "Jäljelle jää todistaa `True`, joka löytyy oletuksista"
  exact h

