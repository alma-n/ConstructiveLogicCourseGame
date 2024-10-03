import Game.Metadata

World "Negaatio"
Level 8

Title ""

Introduction ""

Statement (P Q : Prop) (h : ¬(P → Q)) : ¬¬ P := by
  intro np
  apply h
  intro p
  exfalso
  apply np
  exact p
