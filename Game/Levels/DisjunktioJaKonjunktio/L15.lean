import Game.Metadata
import Mathlib

World "DisjunktioJaKonjunktio"
Level 16

Title "Disjunktio ∧ konjunktio"

Statement (h : (A ∧ B ∧ C ∧ (D ∧ (E ∧ F)) ∧ G ∧ H ∧ I) ∧ J ∧ (K ∧ L ∧ M ∧ N ∧ (O ∧ P) ∧ Q) ∧ R ∧ (S ∧ T ∧ (U ∧ V)) ∧ ((W ∧ X) ∧ Y) ∧ Z) : L ∧ E ∧ A ∧ N := by
  constructor
  exact h.2.2.1.2.1
  constructor
  exact h.1.2.2.2.1.2.1
  constructor
  exact h.1.1
  exact h.2.2.1.2.2.2.1
