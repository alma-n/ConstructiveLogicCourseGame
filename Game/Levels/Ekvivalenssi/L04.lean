
import Game.Metadata

World "Ekvivalenssi"
Level 5

Title "↔ symmetrisyys"

Introduction "
Ekvivalenssi on symmetrinen, eli `A ↔ B` on ekvivalentti `B ↔ A` kanssa.
"

Statement (A B : Prop) (h : A ↔ B) : B ↔ A := by
  constructor
  exact Iff.mpr h
  exact Iff.mp h
