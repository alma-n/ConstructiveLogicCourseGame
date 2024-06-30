import Game.Metadata
import Mathlib

World "Johdanto"
Level 8

Title "Socrates (extra)"

Statement (Human : Type) (Men Mortal : Set (Human)) (Socrates : Human) (socrates_is_man : Socrates ∈ Men) (mortality_of_men : Men ⊆ Mortal) : Socrates ∈ Mortal := by
  apply mortality_of_men
  exact socrates_is_man
