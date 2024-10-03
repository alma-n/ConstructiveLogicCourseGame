import Game.Metadata

World "Peruslogiikka"
Level 11

Title "Socrates on mies ja Socrates on kuolevainen 2"

Introduction "
Tämä on sama kuin edellinen tehtävä, mutta tällä kertaa käytämme `constructor`-taktiikkaa `And.intro`:n sijaan.
"

Statement (Socrates_is_man Socrates_is_mortal : Prop) (sman : Socrates_is_man) (smort : Socrates_is_mortal) : Socrates_is_man ∧ Socrates_is_mortal := by
  exact And.intro sman smort

NewTactic constructor

DisabledTheorem And.intro
