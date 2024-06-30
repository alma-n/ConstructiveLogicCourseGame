import Game.Metadata

World "Kertolasku"
Level 1

Title "n * 1 on n"

Introduction "Tervetuloa kertolasku-maailmaan! Tämän tason tehtävänä on osoittaa, että n * 1 = n."

Statement (n : Nat) : n * 1 = n := by
  Hint "Huomaa, että käyttöösi on ilmestynyt taktiikka Nat.mul_one. Mitäköhän se mahtaa todistaa?"
  apply Nat.mul_one

Conclusion "Hienoa!"

/- Use these commands to add items to the game's inventory. -/

-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.mul_one
