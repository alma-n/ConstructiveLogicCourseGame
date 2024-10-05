
import Game.Metadata

World "Konjunktio"
Level 6

Title "Konjunktio 5"

Statement (A B : Prop) (h : A ∧ B) : B ∧ A := by
  constructor
  exact h.2
  exact h.1
