
import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 6

Title "Title"

Statement (a : Nat)(hb : ∃b c, b ≠ a ∧ b = c): ∃(x y : Nat), x ≠ y := by
  sorry
