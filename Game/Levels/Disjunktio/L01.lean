import Game.Metadata
import Mathlib

World "Disjunktio"
Level 2

Title "Disjunktio 1"

Statement : A ∨ A ↔ A := by
  constructor
  intro h
  cases' h with a a
  exact a
  exact a
  intro a
  left
  exact a

NewTactic left right cases
