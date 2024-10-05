import Game.Metadata

World "Implikaatio"
Level 4

Title "Implikaatio"

Statement (A B : Prop) : (B → A) → B → A := by
  intro h b
  exact h b
