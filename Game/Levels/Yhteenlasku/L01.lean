import Game.Metadata

World "Yhteenlasku"
Level 2

Title "Yhteenlaskua"

open Nat

Statement (n m : Nat) : n + succ (m) = succ (n + m) := by
  rw [add_succ]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.add_succ
