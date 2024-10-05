
import Game.Metadata

World "Disjunktio"
Level 8

Title "Disjunktio 7"

Statement (A B : Prop) (b : B) : A ∨ B := by
  right
  exact b
