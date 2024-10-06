import Game.Metadata

World "Johdanto"
Level 4

Title "Socrates on kuolevainen 0 (Modus Ponens)"

Introduction "
Tässä tasossa sinulla on oletuksissa
0. Tieto siitä, että 'Socrates on ihminen': `sh`
1. Tieto siitä, että 'jos Socrates on ihminen, niin Socrates on kuolevainen': `h`

Väitteenä on todistaa, että 'Socrates on kuolevainen'. Loogisesti tämä seuraa selvästi oletuksesta `Socrates_is_human → Socrates_is_mortal`. Haluamme siis ensimmäiseksi _soveltaa_ oletusta `h`.

Leanissa `apply`-taktiikka soveltaa implikaatiomuotoista oletusta. Kirjoittamalla `apply h` muutat maalin `Socrates_is_mortal`:ista `Socrates_is_human`:iksi. Huomaa, että soveltaessa tulee lukea implikaationuolta oikealta vasemmalle.
"

Statement (Socrates_is_human Socrates_is_mortal : Prop) (h : Socrates_is_human → Socrates_is_mortal) (sh : Socrates_is_human) : Socrates_is_mortal := by
  Hint "Aloita soveltamalla oletusta `h`: `apply h`"
  apply h
  Hint "Maali muuttui väitteeksi `Socrates_is_human`, joka on jo oletuksissa: `sh`"
  exact sh

NewTactic apply
