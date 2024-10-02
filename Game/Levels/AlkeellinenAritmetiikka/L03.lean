import Game.Metadata

World "Aritmetiikka"
Level 4

Title "Hieno otsikko"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

open Nat

Statement : 3 = succ (succ (succ (0))) := by
  rfl

Conclusion "This last message appears if the level is solved."

TacticDoc induction /- Indutio pälä pälä pölö pölö ... -/
