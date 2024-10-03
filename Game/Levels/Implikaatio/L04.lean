import Game.Metadata

World "Implikaatio"
Level 5

Title "SER"

Statement : (A → B) → (B → C) → A → C := by
  intro hab hbc a
  exact hbc (hab a)

NewTheorem Function.comp
