import Game.Metadata
import Mathlib

World "Disjunktio"
Level 4

Title "Disjunktio 3"

Statement : (A ∨ B) ∨ C ↔ A ∨ (B ∨ C) := by
  constructor
  intro h
  cases' h with ab c
  cases' ab with a b
  left
  exact a
  right
  left
  exact b
  right
  right
  exact c
  intro h
  cases' h with a bc
  left
  left
  exact a
  cases' bc with b c
  left
  right
  exact b
  right
  exact c
