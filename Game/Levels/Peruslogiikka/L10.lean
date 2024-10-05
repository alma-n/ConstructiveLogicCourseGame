import Game.Metadata

World "Peruslogiikka"
Level 11

Title "Socrates on ihminen ja Socrates on kuolevainen 2"

Introduction "
Tämä on sama kuin edellinen tehtävä, mutta tällä kertaa käytämme `constructor`-taktiikkaa `And.intro`:n sijaan.
"

Statement (Socrates_is_human Socrates_is_mortal : Prop) (sman : Socrates_is_human) (smort : Socrates_is_mortal) : Socrates_is_human ∧ Socrates_is_mortal := by
  constructor
  exact sman
  exact smort

NewTactic constructor

DisabledTheorem And.intro
