import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 4

Title "Title"

Statement (h : ∃ x, x ≠ y) : ∃ x, x ≠ y := by
  exact h

