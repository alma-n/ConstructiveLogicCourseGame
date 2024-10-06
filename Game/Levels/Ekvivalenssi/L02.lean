
import Game.Metadata

World "Ekvivalenssi"
Level 3

Title "Socrates on ihminen ↔ Socrates on ihminen 3"

Introduction "
Looginen ekvivalenssi `A ↔ B` on ekvivalentti `(A → B) ∧ (B → A)` kanssa, joten voimme käyttää konjunktion taktiikkaa `constructor`. Jäjelle jää todistaa maalit `A → B` ja `B → A`, jotka menevät `exact`-taktiikkaa käyttäen.
"

Statement (A B : Prop) (hab : A → B) (hba : B → A) : A ↔ B := by
  Hint "Aloita käyttämällä `constructor`-taktiikkaa"
  constructor
  exact hab
  exact hba

DisabledTheorem Iff.intro
