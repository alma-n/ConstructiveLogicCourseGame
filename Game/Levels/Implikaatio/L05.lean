import Game.Metadata

World "Implikaatio"
Level 6

Title "Implikaatio"

Statement (A B C : Prop) : (A → B) → (B → C) → A → C := by
  intro hab hbc a
  exact hbc (hab a)
