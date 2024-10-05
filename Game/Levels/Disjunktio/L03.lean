import Game.Metadata

World "Disjunktio"
Level 4

Title "Disjunktio 3"

Statement : (A ∨ B) ∨ C ↔ A ∨ (B ∨ C) := by
  constructor
  intro h
  cases h
  cases h_1
  left
  exact h
  right
  left
  exact h
  right
  right
  exact h_1
  intro h
  cases h
  left
  left
  exact h_1
  cases h_1
  left
  right
  exact h
  right
  exact h
