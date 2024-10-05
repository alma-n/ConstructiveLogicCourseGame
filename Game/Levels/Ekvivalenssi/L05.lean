
import Game.Metadata

World "Ekvivalenssi"
Level 6

Title "↔ transitiivisuus"

Introduction "
Ekvivalenssi on transitiivinen, eli jos `A ↔ B` ja `B ↔ C`, niin `A ↔ C` kanssa.
"

Statement (A B C : Prop) (h1 : A ↔ B) (h2 : B ↔ C) : A ↔ C := by
  constructor
  Hint "Muista `intro`-taktiikka"
  intro a
  Hint "`Iff.mp h2 : B → C`, millä taktiikalla voit muuttaa maalin `B`:ksi?"
  apply Iff.mp h2
  Hint "`Iff.mp h1 : A → B`, millä taktiikalla voit muuttaa maalin `A`:ksi?"
  apply Iff.mp h1
  Hint "Katso mitä löytyy kontekstista..."
  exact a
  intro c
  apply Iff.mpr h1
  apply Iff.mpr h2
  exact c
