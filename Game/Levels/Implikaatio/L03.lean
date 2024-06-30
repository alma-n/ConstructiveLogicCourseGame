import Game.Metadata

World "Implikaatio"
Level 4

Title "SER"

Statement (hab : A → B) (hbc : B → C) : A → C := by
  intro a
  exact hbc (hab a)
