
import Game.Metadata

World "Disjunktio"
Level 6

Title "Disjunktio 5"

Statement (A B C : Prop) (h : A → C) (hab : A ∨ B): B ∨ C := by
  cases hab
  right
  apply h
  exact h_1
  left
  exact h_1
