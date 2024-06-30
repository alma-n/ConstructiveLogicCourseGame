import Game.Metadata

World "Johdanto"
Level 6

Title "Socrates 4"

Statement (Socrates_is_man Socrates_is_mortal : Prop) : Socrates_is_man → (Socrates_is_man → Socrates_is_mortal) → Socrates_is_mortal := by
  intro hmm hm
  apply hm
  exact hmm

NewTactic apply
