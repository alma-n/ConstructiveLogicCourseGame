import Game.Metadata

World "UniversaaliKvanttori"
Level 3

Title "Ihmiset ovat kuolevaisia"

Introduction ""

Statement (Elio : Type)
  (Elain : Elio → Prop)
  (Ihminen : Elio → Prop)
  (Kuolevainen : Elio → Prop)
  (ihminen_elain : ∀ e, Ihminen e → Elain e)
  (elain_kuolevainen : ∀ e, Elain e → Kuolevainen e)
  : ∀ e, Ihminen e → Kuolevainen e := by
  intro e he
  apply elain_kuolevainen
  apply ihminen_elain
  exact he
