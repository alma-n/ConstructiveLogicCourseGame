import Game.Metadata

World "Konjunktio"
Level 5

Title "Konjunktio 4"

Statement : (A ∧ B) ∧ C ↔ A ∧ (B ∧ C):= by
  constructor
  intro h
  constructor
  exact h.1.1
  constructor
  exact h.1.2
  exact h.2
  intro h
  constructor
  constructor
  exact h.1
  exact h.2.1
  exact h.2.2
