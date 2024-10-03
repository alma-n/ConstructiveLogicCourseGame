import Game.Metadata

World "Peruslogiikka"
Level 1

Title "Maalit Leanissä"

Introduction "
**Maali** tarkoittaa sitä tyyppiä, jonka todistusalkiota olemme muodostamassa.

Maali saattaa muuttua sitä mukaan kun todistus etenee. Esimerkiksi tässä kentässä on tehtävänä todistaa konjunktio `A ∧ B` käyttämällä `constructor` taktiikkaa, joka rikkoo konjunktion kahdeksi maaliksi `A` ja `B`.

Maali ilmaistaan usein symbolilla `⊢`.

Tämänhetkinen maali on todistaa `A ∧ B`.


"

Statement (A B : Prop) (a : A) (b : B) : A ∧ B := by
  constructor
  exact a
  exact b

NewTactic constructor

OnlyTheorem
