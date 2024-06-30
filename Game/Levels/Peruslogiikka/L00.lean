import Game.Metadata

World "Peruslogiikka"
Level 1

Title "Tosi on triviaalisti tosi"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement : True := by
  exact trivial

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
