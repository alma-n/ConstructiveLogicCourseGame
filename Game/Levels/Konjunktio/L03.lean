import Game.Metadata

World "Konjunktio"
Level 4

Title "Konjunktio 3"

Statement : A ∧ B ↔ B ∧ A := by
  constructor
  intro h
  constructor
  exact h.2
  exact h.1
  intro h
  constructor
  exact h.2
  exact h.1
