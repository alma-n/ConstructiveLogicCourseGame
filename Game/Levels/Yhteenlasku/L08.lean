import Game.Metadata
import Mathlib

World "Yhteenlasku"
Level 9

Title "add_right_eq_self"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n ja m pätee seuraava: Jos tiedetään, että n + m = n, voidaan päätellä, että m = 0."

Statement (n m : Nat) : n + m = n → m = 0 := by
  intro h
  induction n
  simp at h
  exact h
  apply n_ih
  rw [Nat.succ_add, Nat.succ_inj] at h
  exact h

Conclusion "Hyvä sinä!"

NewTheorem Nat.add_left_cancel
