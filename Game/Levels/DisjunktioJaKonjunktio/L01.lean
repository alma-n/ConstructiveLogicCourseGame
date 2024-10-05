import Game.Metadata


World "DisjunktioJaKonjunktio"
Level 2

Title "Disjunktio ∧ konjunktio"

Statement : A ∧ (B ∨ C) ↔ (A ∧ B) ∨ (A ∧ C) := by
  constructor
  intro h
  cases h
  cases right
  left
  exact And.intro left h
  right
  exact And.intro left h
  intro h
  cases h
  constructor
  exact h_1.1
  left
  exact h_1.2
  constructor
  exact h_1.1
  right
  exact h_1.2
