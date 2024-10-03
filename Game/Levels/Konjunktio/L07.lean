import Game.Metadata

World "Peruslogiikka"
Level 8

Title "Konjunktio"

Statement : A ∧ A ↔ A := by
  constructor
  intro h
  exact h.1
  intro a
  constructor
  exact a
  exact a

NewTactic constructor
