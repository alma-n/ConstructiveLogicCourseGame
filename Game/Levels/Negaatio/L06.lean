import Game.Metadata

World "Negaatio"
Level 7

Title ""

Introduction ""

Statement (P : Prop) (h : ¬¬¬P) : ¬P := by
  intro p
  apply h
  intro np
  apply np
  exact p
