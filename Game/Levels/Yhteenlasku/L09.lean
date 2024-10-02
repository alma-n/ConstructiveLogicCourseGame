import Game.Metadata
import Mathlib

World "Yhteenlasku"
Level 10

Title "add_left_eq_self"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n ja m pätee seuraava: Jos tiedetään, että m + n = n, voidaan päätellä, että m = 0."

Statement (n m : Nat) : m + n = n → m = 0 := by
  intro h
  induction n
  simp at h
  exact h
  apply n_ih
  rw [Nat.add_succ, Nat.succ_inj] at h
  exact h

Conclusion "Hyvä sinä!"
