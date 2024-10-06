import Game.Metadata

World "Negaatio"
Level 7

Title "Usean negaation yksinkertaistus"

Introduction ""

Statement (P : Prop) (h : ¬¬¬P) : ¬P := by
  intro p
  apply h
  intro np
  apply np
  exact p

