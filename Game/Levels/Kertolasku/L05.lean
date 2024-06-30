import Game.Metadata

World "Kertolasku"
Level 6

Title "0 * n = 0"

Introduction "Tässä tasossa osoitamme, että kaikille luonnollisile luvuille n pätee, että 0 * n = 0."

open Nat

Statement (n : Nat) : 0 * n = 0 := by
  Hint "Induktiosta saattaa olla apua tätä tasoa ratkaistaessa."
  induction n
  apply Nat.mul_zero
  rw [mul_succ, n_ih]

Conclusion "Hyvä sinä!"

NewTactic Nat.one_mul Nat.zero_mul
