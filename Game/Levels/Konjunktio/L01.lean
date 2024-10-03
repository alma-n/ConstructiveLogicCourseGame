import Game.Metadata

World "Konjunktio"
Level 2

Title "Määritelmä"

Introduction "
$(A ∧ B) ∧ C ∧ D$ on sama kuin $(A ∧ B) ∧ (C ∧ D)$
"

Statement (A B C D : Prop) (a : A) (b : B) (c : C) (d : D) : (A ∧ B) ∧ (C ∧ D) := by
  have ab := And.intro a b
  have cd := And.intro c d
  exact And.intro ab cd

NewTactic «have»

TheoremTab "∧"
