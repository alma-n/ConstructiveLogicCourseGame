import Game.Metadata

World "Kertolasku"
Level 4

Title "n * succ (m) on n * m + n"

Introduction "Tällä kertaa tehtävänäsi on osoittaa, että kaikille luonnollisille luvuille n ja m pätee, että n * succ (m) = n * m + n."

open Nat

Statement (n m : Nat) : n * succ (m) = n * m + n := by
  apply Nat.mul_succ

Conclusion "Hyvä sinä!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.mul_succ
