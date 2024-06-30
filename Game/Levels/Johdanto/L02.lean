import Game.Metadata

World "Johdanto"
Level 3

Title "Socrates 1"

Statement (Socrates_is_man : Prop) : Socrates_is_man → Socrates_is_man := by
  intro h
  exact h

NewTactic intro
