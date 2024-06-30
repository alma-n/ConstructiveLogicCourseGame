import Game.Metadata

World "Aritmetiikka"
Level 3

Title "Hieno otsikko"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement (x y : Nat) (h : y = 3 * x) : 3 * x + 1729 = y + 1729 := by
  rewrite [h]
  rfl

Conclusion "This last message appears if the level is solved."

NewTactic rewrite

NewDefinition Nat.zero Nat.succ False True Nat

