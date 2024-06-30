import Game.Metadata

World "Kertolasku"
Level 3

Title "succ (n) * m on n * m + m"

Introduction "Tällä kertaa tehtävänäsi on osoittaa, että kaikille luonnollisille luvuille n ja m pätee, että succ (n) * m = n * m + m."

open Nat

Statement (n m : Nat) : succ (n) * m = n * m + m := by
  apply Nat.succ_mul

Conclusion "Hyvä sinä!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.succ_mul
