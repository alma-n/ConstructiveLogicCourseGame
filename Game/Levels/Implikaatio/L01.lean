import Game.Metadata

World "Implikaatio"
Level 2

Title "Implikaatio 1"

Statement (A B : Prop) (b : B) : A → B := by
  Hint "Ainoa `B`:n todistusalkio, joka on tiedossa on `b`"
  intro _a
  exact b
