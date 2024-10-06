import Game.Metadata

World "Negaatio"
Level 9

Title "Negaatio 9"

Introduction ""

Statement (P Q : Prop) (h : ¬(P → Q)) : ¬¬ P := by
  intro np
  apply h
  intro p
  exfalso
  apply np
  exact p
