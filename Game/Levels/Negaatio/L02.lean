import Game.Metadata

World "Negaatio"
Level 3

Title "Kaksoisepätosi"

Introduction ""

Statement (P : Prop) (x : P) : ¬¬P := by
  intro np
  apply np
  exact x
