import Game.Metadata

World "Implikaatio"
Level 5

Title "Implikaatio"

Statement (A B C : Prop) : (A → B → C) → (B → A → C) := by
  intro h b a
  exact h a b
