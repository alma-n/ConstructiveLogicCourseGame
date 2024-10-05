import Game.Metadata

open Nat

World "Kertolasku"
Level 2

Title "n * 0 on 0"

Introduction "Tämän tason tehtävänä on osoittaa, että n * 0 = 0."

Statement (n : Nat) : n * 0 = 0 := by
  induction n
  rw [Nat.zero_mul]
  rw [succ_mul, Nat.add_zero, n_ih]

Conclusion "Hienoa!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTactic induction

NewTactic Nat.add_zero
