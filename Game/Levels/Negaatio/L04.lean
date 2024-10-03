import Game.Metadata

World "Negaatio"
Level 5

Title ""

Introduction ""

Statement (P : Prop) (h : P → ¬ P) : ¬P := by
  intro p
  apply h p
  exact p
