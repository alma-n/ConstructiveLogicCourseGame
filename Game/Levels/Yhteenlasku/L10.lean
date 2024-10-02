import Game.Metadata
import Mathlib

World "Yhteenlasku"
Level 11

Title "add_right_eq_zero"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n ja m pätee seuraava: Jos tiedetään, että m + n = 0, voidaan päätellä, että n = 0."

Statement (n m : Nat) : m + n = 0 → n = 0 := by
  intro h
  induction n
  rfl
  simp at h

Conclusion "Hyvä sinä!"
