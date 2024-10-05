import Game.Metadata

World "Peruslogiikka"
Level 10

Title "Socrates on ihminen ja Socrates on kuolevainen"

Introduction "
Kahden väitteen $P$ ja $Q$ **konjunktio** $P ∧ Q$ (luetaan 'P ja Q') tarkoittaa sitä, että molemmat väitteet $P$ ja $Q$ ovat totta.

Leanissä todistus konjunktiosta voidaan luoda käyttämällä funktiota `And.intro`.

Voit ratkaista tämän kentän käyttämällä `exact And.intro ___ ___` tai `apply And.intro` ja sulkemalla molemmat maalit käyttäen `exact`ia.
"

Statement (Socrates_is_human Socrates_is_mortal : Prop) (sman : Socrates_is_human) (smort : Socrates_is_mortal) : Socrates_is_human ∧ Socrates_is_mortal := by
  exact And.intro sman smort

NewTheorem And.intro
