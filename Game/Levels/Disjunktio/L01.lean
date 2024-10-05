import Game.Metadata

World "Disjunktio"
Level 2

Title "Disjunktio 1"

Statement : A ∨ A ↔ A := by
  constructor
  intro h
  cases h
  exact h_1
  exact h_1
  intro a
  left
  exact a

NewTactic left right cases
