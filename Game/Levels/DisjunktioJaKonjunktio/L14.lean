import Game.Metadata
import Mathlib

World "DisjunktioJaKonjunktio"
Level 15

Title "Disjunktio ∧ konjunktio"

Statement : A ∨ (B ∧ C) ↔ (A ∨ B) ∧ (A ∨ C) := by
  constructor
  intro h
  constructor
  cases' h with a bc
  left
  exact a
  right
  exact bc.1
  cases' h with a bc
  left
  exact a
  right
  exact bc.2
  intro h
  cases' h with ab ac
  cases' ab with a b
  left
  exact a
  cases' ac with a c
  left
  exact a
  right
  constructor
  exact b
  exact c
