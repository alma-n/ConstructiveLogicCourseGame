import Game.Metadata

World "Konjunktio"
Level 1

Title "Hieno otsikko"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement : 5 * x + 8 * y = 5 * x + 8 * y := by
  rfl

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
