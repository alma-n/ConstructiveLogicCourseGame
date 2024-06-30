import Game.Metadata

World "Peruslogiikka"
Level 9

Title "Konjunktio"

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
