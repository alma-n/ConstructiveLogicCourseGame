import Game.Metadata

World "Kertolasku"
Level 2

Title "n * 0 on 0"

Introduction "Tämän tason tehtävänä on osoittaa, että n * 0 = 0."

Statement (n : Nat) : n * 0 = 0 := by
  Hint "Huomaa, että käyttöösi on ilmestynyt taktiikka Nat.mul_zero. Mitäköhän se mahtaa todistaa?"
  apply Nat.mul_zero

Conclusion "Hienoa!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.mul_zero
