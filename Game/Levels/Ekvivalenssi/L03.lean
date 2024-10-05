
import Game.Metadata

World "Ekvivalenssi"
Level 4

Title "↔ purkaminen"

Introduction "
Jos oletuksista löytyy, että `A ↔ B`, voidaan se purkaa implikaatioiksi `A → B` ja `B → A` käyttäen `Iff.mp` ja `Iff.mpr` vastaavasti.
"

Statement (A B : Prop) (h : A ↔ B) : (A → B) ∧ (B → A) := by
  Hint "Aloita käyttämällä `constructor`-taktiikkaa"
  constructor
  Hint "Ensimmäinen maali on `A → B`, johon saadaan todistus käyttäen `Iff.mp h`"
  exact Iff.mp h
  Hint "Toinen maali on `B → A`, johon saadaan todistus käyttäen `Iff.mpr h`"
  exact Iff.mpr h

NewTheorem Iff.mp Iff.mpr
