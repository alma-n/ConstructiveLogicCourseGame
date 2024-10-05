import Game.Metadata

World "Negaatio"
Level 5

Title "Modus Tollens"

Introduction ""

Statement (P Q : Prop) (h : P → Q) (nq : ¬ Q) : ¬P := by
  intro p
  apply nq
  exact h p
