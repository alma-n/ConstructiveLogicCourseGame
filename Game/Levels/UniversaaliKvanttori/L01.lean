import Game.Metadata

World "UniversaaliKvanttori"
Level 2

Title "Socrates on kuolevainen eläin"

Introduction ""

Statement (Elain : Type)
  (Ihminen : Elain → Prop)
  (Kuolevainen : Elain → Prop)
  (ihminen_on_kuolevainen : ∀ e, Ihminen e → Kuolevainen e)
  (Socrates : Elain)
  (Socrates_ihminen : Ihminen Socrates)
  : Kuolevainen Socrates := by
  exact ihminen_on_kuolevainen _ Socrates_ihminen
