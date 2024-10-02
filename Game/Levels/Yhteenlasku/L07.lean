import Game.Metadata

World "Yhteenlasku"
Level 8

Title "add_left_cancel"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n, m ja l pätee seuraava: Jos tiedetään, että l + n = l + m, voidaan päätellä, että n = m."

open Nat

Statement (n m l : Nat) : l + n = l + m → n = m := by
  intro h
  rw [Nat.add_left_cancel h]

Conclusion "Hyvä sinä!"


NewTheorem Nat.add_right_cancel
