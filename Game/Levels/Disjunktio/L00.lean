import Game.Metadata

World "Disjunktio"
Level 1

Title "Disjunktio 0"

Introduction "Tutustuimme disjunktioon jo jonkin verran peruslogiikan maailmassa. Tässä maailmassa pääset tekemään lisää disjunktioon liittyviä tehtäviä."

Statement (A B : Prop) (a : A) (_b : B) : A ∨ B := by
  left
  exact a
