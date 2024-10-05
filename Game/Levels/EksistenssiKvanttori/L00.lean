import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 1

Title "Title"

Statement : ∃(n : Nat), n = 0 := by
  use 0

NewTactic use
