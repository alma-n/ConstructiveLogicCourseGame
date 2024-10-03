import Game.Metadata

World "UniversaaliKvanttori"
Level 1

Title "Kaikille joille..."

Introduction "
**Predikaatti** `α`:n yli on mikä tahansa funktio muotoa `α → Prop`, jossa `α` on mikä tahansa tyyppi. Esimerkiksi `α` voisi on tyyppi joka sisältää kaikki ihmiset ja `P` sellainen predikaatti, joka ilmaisee kun `a : α` on kuolevainen.
"

Statement (Ihminen : Type) (Kuolevainen : Ihminen → Prop) : ∀ a, Kuolevainen a → Kuolevainen a:= by
  intro a
  intro ha
  exact ha
