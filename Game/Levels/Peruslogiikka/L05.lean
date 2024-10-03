import Game.Metadata

World "Peruslogiikka"
Level 6

Title "Socrates on kilpikonna"

Introduction "
Tässä kentässä harjoitellaan todistamaan mitä tahansa, kun oletuksissa on ristiriita käyttämällä `exfalso`-taktiikkaa. `exfalso`-taktiikka muuttaa minkä tahansa maalin `False`:ksi.

[Ex falso quodlibet](https://en.wikipedia.org/wiki/Principle_of_explosion)
"

Statement (Socrates_is_turtle : Prop) (h : False) : Socrates_is_turtle := by
  Hint "Käyttämällä `exfalso`-taktiikkaa, maali muuttuu `False`:ksi. Riittää siis todistaa `False`, että voidaan todistaa, että Socrates on kilpikonna"
  exfalso
  Hint "Oletuksista löydämme `h : False`, joka sulkee maalin"
  exact h

NewTactic exfalso

Conclusion "Pystyimme tässä tasossa näennäisesti 'todistamaan' jotakin, minkä tiedämme vääräksi edellisen tason perusteella. Miksi? Selkeästi siksi, että oletuksistamme löytyi oletus 'False'. Tämä taso havainnollistaa hyvin, kuinka tärkeä konsistentti pohja on matematiikkaa tehdessä"
