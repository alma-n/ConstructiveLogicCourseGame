import Game.Metadata


World "DisjunktioJaKonjunktio"
Level 1

Title "Disjunktio ∧ konjunktio"

Statement : A ∧ (B ∨ C) ↔ (B ∨ C) ∧ A := by
  constructor
  intro h
  exact ⟨ h.2, h.1 ⟩
  intro h
  exact ⟨ h.2, h.1 ⟩
