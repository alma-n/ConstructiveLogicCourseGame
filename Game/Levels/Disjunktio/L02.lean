import Game.Metadata
import Mathlib

World "Disjunktio"
Level 3

Title "Disjunktio 2"

Statement : A ∨ B ↔ B ∨ A := by
  constructor
  intro h
  cases' h with a b
  right
  exact a
  left
  exact b
  intro h
  cases' h with b a
  right
  exact b
  left
  exact a
