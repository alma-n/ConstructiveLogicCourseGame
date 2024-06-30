import Game.Metadata

World "Aritmetiikka"
Level 2

Title "Hieno otsikko"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement (x y : Nat) : 7 * y + 3 * x + 73 = 7 * y + 3 * x + 73 := by
  rfl

Conclusion "This last message appears if the level is solved."
