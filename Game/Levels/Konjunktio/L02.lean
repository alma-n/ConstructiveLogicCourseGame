import Game.Metadata

World "Konjunktio"
Level 3

Title "Konjunktio 2"

Statement : A ∧ A ↔ A := by
  constructor
  intro h
  exact h.1
  intro a
  constructor
  exact a
  exact a
