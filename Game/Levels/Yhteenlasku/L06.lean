import Game.Metadata

World "Yhteenlasku"
Level 7

Title "add_right_cancel"

Introduction "Tämän tason tehtävänä on todistaa, että kaikille luonnollisille luvuille n, m ja l pätee seuraava: Jos tiedetään, että n + l = m + l, voidaan päätellä, että n = m."

open Nat

Statement (n m l : Nat) : n + l = m + l → n = m := by
  intro h
  rw [Nat.add_right_cancel h]

Conclusion "Hyvin menee!"

