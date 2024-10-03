import Game.Metadata

World "Implikaatio"
Level 4

Title "SER"

Statement : (A → B → C) → (B → A → C) := by
  intro h b a
  exact h a b
