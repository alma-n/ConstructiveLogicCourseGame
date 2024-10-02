import Game.Metadata
import Mathlib

World "Yhteenlasku"
Level 12

Title "add_left_eq_zero"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n ja m pätee seuraava: Jos tiedetään, että m + n = 0, voidaan päätellä, että m = 0."

Statement (n m : Nat) : m + n = 0 → m = 0 := by
  intro h
  induction m
  rfl
  simp at h

Conclusion "Hyvä sinä!"
