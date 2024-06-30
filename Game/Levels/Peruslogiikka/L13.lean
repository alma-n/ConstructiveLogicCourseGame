import Game.Metadata
import Mathlib

World "Peruslogiikka"
Level 14

Title "Disjunktio ∧ konjunktio"

Statement : A ∧ (B ∨ C) ↔ (A ∧ B) ∨ (A ∧ C) := by
  constructor
  intro h
  cases' h with a bc
  cases' bc with b c
  left
  exact And.intro a b
  right
  exact And.intro a c
  intro h
  cases' h with ab ac
  constructor
  exact ab.1
  left
  exact ab.2
  constructor
  exact ac.1
  right
  exact ac.2
