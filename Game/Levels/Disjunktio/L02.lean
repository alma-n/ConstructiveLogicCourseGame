import Game.Metadata

World "Disjunktio"
Level 3

Title "Disjunktio 2"

Statement : A ∨ B ↔ B ∨ A := by
  constructor
  intro h
  cases h
  right
  exact h_1
  left
  exact h_1
  intro h
  cases h
  right
  exact h_1
  left
  exact h_1
