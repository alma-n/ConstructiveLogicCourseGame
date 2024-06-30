import Game.Metadata
import Mathlib

World "Peruslogiikka"
Level 11

Title "Disjunktio"

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
