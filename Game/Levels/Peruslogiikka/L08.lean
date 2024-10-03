import Game.Metadata

World "Peruslogiikka"
Level 9

Title "Socrates on kilpikonna 4"

Introduction "
Tässä kentässä harjoitellaan todistamaan mitä tahansa, kun oletuksissa on ristiriita käyttämällä `contradiction`-taktiikkaa.
"

Statement (Socrates_is_turtle : Prop) : ¬Socrates_is_turtle → 2 = 1 + 1 → 4 = 5 → Socrates_is_turtle := by
  intro _h1 _h2 h3
  contradiction

-- Statement (Socrates_is_turtle : Prop) (Socrates_is_man : Prop) (h : ¬(Socrates_is_turtle ∧ Socrates_is_man)) : Socrates_is_turtle → Socrates_is_man → 4 = 5 := by
--   intro sk
--   intro sm
--   exfalso
--   apply h
--   constructor
--   · exact sk
--   · exact sm
