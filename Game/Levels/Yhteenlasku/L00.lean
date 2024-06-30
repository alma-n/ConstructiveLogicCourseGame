import Game.Metadata

World "Yhteenlasku"
Level 1

Title "n + 0 on n"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement (n : Nat) : n + 0 = n := by
  Hint "Huomaa, että käyttöösi on ilmestynyt taktiikka Nat.add_zero. Mitäköhän se mahtaa todistaa?"
  apply Nat.add_zero

Conclusion "Taso ratkeaa myöskin rfl taktiikalla. Kokeile ihmeessä!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.add_zero
