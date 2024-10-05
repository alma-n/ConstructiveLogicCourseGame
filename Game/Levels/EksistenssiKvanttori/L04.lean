import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 5

Title "Title"

Statement (h : ∃ x, x + 1 ≠ y) : ∃ x, x ≠ y := by
  obtain ⟨x, hx⟩ := h
  use x + 1

NewTactic obtain
