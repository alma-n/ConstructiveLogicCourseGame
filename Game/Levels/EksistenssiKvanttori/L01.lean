import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 2

Title "Title"

Statement : ∃(x : Nat), x + 69 = 73 := by
  use 4

NewTactic use

