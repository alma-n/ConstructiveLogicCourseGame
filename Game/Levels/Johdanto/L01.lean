import Game.Metadata

World "Johdanto"
Level 2

Title "Socrates 0"

Statement (Socrates_is_man : Prop) (h : Socrates_is_man) : Socrates_is_man := by
  exact h

NewTactic exact
