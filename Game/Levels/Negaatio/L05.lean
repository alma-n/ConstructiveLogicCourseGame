import Game.Metadata

World "Negaatio"
Level 6

Title ""

Introduction ""

Statement (P Q : Prop) (h : ¬(P → Q)) : ¬Q := by
  intro q
  apply h
  intro _p
  exact q
