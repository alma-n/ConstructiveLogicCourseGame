
import Game.Metadata

World "Disjunktio"
Level 7

Title "Disjunktio 6"

Statement (A B C : Prop)(h : A → B): (A ∨ C) → (B ∨ C) := by
  intro ac
  cases ac
  left
  exact h h_1
  right
  exact h_1
