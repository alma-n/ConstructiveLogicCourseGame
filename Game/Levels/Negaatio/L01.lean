import Game.Metadata

World "Negaatio"
Level 2

Title "Epätodesta voidaan todistaa mitä tahansa"

Introduction ""

Statement (socrates_syo_kenkia : Prop) : False → socrates_syo_kenkia := by
  intro f
  exfalso
  exact f

NewTactic exfalso
