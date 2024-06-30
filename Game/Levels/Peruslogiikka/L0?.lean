import Game.Metadata
import Mathlib

World "Peruslogiikka"
Level 10

Title "Kolmannen poissuljetun laki"

Statement : ¬ ∀ A B, A ∧ (B → A) → B := by
  intro h
  have gona := h True False
  apply gona
  constructor
  trivial
  intro _f
  trivial

Conclusion "Tehtävä havainnollistaa hyvin yleistä loogista virhettä, jossa sekoitetaan 'jos' sekä 'jos ja vain jos' keskenään."
