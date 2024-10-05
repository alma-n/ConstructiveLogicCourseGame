
import Game.Metadata

World "Ekvivalenssi"
Level 2

Title "Socrates on mies ↔ Socrates on mies 2"

Introduction "
Looginen ekvivalenssi, eli 'jos ja vain jos' voidaan todistaa antamalla todistukset sekä 'jos' ja 'vain jos' suunnista.

Esimerkiksi `A ↔ B` on loogisesti sama (ekvivalentti) kuin `(A → B) ∧ (B → A)`. Jos kontekstissa on jo oletukset `A → B` ja `B → A`, voidaan muodostaa todistustermi `Iff.intro hab hba : A ↔ B`.

Voit kirjoittaa `exact Iff.intro ___ ___` suoraan tai käyttää `apply Iff.intro` ja sulkea molemmat maalit erikseen.
"

Statement (A B : Prop) (hab : A → B) (hba : B → A) : A ↔ B := by
  exact Iff.intro hab hba

NewTheorem Iff.intro
