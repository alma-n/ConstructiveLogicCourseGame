import Game.Metadata

World "Peruslogiikka"
Level 8

Title "Socrates on kilpikonna 3"

Introduction "
Tässä kentässä harjoitellaan todistamaan mitä tahansa, kun oletuksissa on ristiriita käyttämällä `contradiction`-taktiikkaa.
"

Statement (Socrates_is_turtle : Prop) (h : 4 = 5) : Socrates_is_turtle := by
  Hint "`contradiction`-taktiikka todistaa mitä tahansa kunhan oletuksissa on selvästi ristiriita"
  contradiction

NewTactic contradiction
