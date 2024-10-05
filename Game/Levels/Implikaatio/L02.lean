import Game.Metadata

World "Implikaatio"
Level 3

Title "Implikaatio 2"

Statement (A B : Prop) : A → B → A := by
  intro a _b
  exact a
