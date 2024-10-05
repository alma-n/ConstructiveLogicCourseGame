import Game.Metadata
import Mathlib

open Nat

World "Kertolasku"
Level 1

Title "n * 1 on n"

Introduction "Tervetuloa kertolasku-maailmaan! Tämän tason tehtävänä on osoittaa, että n * 1 = n."

Statement (n : Nat) : 1 * n = n := by
  rw [one_eq_succ_zero, succ_mul, zero_mul, zero_add]

Conclusion "Hienoa!"

/- Use these commands to add items to the game's inventory. -/

NewTheorem Nat.mul_succ Nat.mul_zero Nat.zero_add
