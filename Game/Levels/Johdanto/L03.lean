import Game.Metadata

World "Johdanto"
Level 4

Title "Socrates 3"

Statement (Socrates_is_man Socrates_is_mortal : Prop) : (Socrates_is_man → Socrates_is_mortal) → Socrates_is_man → Socrates_is_mortal := by
  intro hmm hm
  apply hmm
  exact hm

NewTactic apply
