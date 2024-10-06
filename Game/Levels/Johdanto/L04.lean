import Game.Metadata

World "Johdanto"
Level 5

Title "Socrates on kuolevainen 1"

Introduction "
Tehtävä on sama kuin edellinen, mutta sinulla ei ole käytössä `apply`-taktiikkaa.

Konstruktiivisessa logiikassa implikaatio on sama kuin funktio. `h : Socrates_is_human → Socrates_is_mortal` on funktio joka muuttaa todistuksen väitteestä `Socrates_is_human` todistukseksi `Socrates_is_mortal`.

Funktiokutsu Leanissä kirjoitetaan ilman sulkeita, eli jos `f : A → B` ja `a : A` niin `f a` on tyyppiä `B`.

`exact`-taktiikalle voi syöttää minkä tahansa lausekkeen, jonka tyyppi on oikea, esim. `exact f a` sulkee maalin `B`.
"

Statement (Socrates_is_human Socrates_is_mortal : Prop) (h : Socrates_is_human → Socrates_is_mortal) (sh : Socrates_is_human) : Socrates_is_mortal := by
  Hint "Saat todistuksen väitteestä kutsumalla funktiota `h` arvolla `sh`: `exact h sh`"
  exact h sh

OnlyTactic exact
