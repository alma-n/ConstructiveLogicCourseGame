import Game.Metadata

World "Kertolasku"
Level 5

Title "1 * n = n"

Introduction "Tässä tasossa osoitamme, että kaikille luonnollisile luvuille n pätee, että 1 * n = n."

open Nat

Statement (n : Nat) : 1 * n = n := by
  Hint "Induktiosta saattaa olla apua tätä tasoa ratkaistaessa."
  induction n
  apply Nat.mul_zero
  rw [Nat.mul_succ, succ_eq_add_one, n_ih]

Conclusion "Hyvä sinä!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.succ_eq_add_one
