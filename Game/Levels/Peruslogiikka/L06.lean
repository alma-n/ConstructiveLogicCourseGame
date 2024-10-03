import Game.Metadata

World "Peruslogiikka"
Level 7

Title "Socrates on kilpikonna 2"

Introduction "
Tässä kentässä harjoitellaan todistamaan mitä tahansa, kun oletuksissa on ristiriita käyttämällä `exfalso`-taktiikkaa. `exfalso`-taktiikka muuttaa minkä tahansa maalin `False`:ksi.

[Ex falso quodlibet](https://en.wikipedia.org/wiki/Principle_of_explosion)
"

Statement (Socrates_is_turtle : Prop) (h : ¬Socrates_is_turtle) : Socrates_is_turtle → 4 = 5 := by
  Hint "Aloita olettamalla, että Socrates on kilpikonna"
  intro hs
  Hint "Koska oletuksissa on nyt ristiriita voimme todistaa mitä tahansa Ex falso quodlibet"
  exfalso
  Hint "`h : ¬Socrates_is_turtle` on funktio `Socrates_is_turtle → False`, joten `apply h` muuttaa maalin tyypiksi `Socrates_is_turtle`"
  apply h
  Hint "`Socrates_is_turtle` löytyykin oletuksista"
  exact hs
