import Game.Metadata

World "Peruslogiikka"
Level 12

Title "Socrates on ihminen, kuolevainen, mutta ei kilpikonna"

Introduction "
"

Statement (Socrates_is_human Socrates_is_mortal : Prop) (sman : Socrates_is_human) (smort : Socrates_is_mortal) (sturt : ¬ Socrates_is_turtle) : Socrates_is_human ∧ Socrates_is_mortal ∧ ¬ Socrates_is_turtle := by
  constructor
  exact sman
  constructor
  exact smort
  exact sturt
