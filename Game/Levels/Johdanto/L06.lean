import Game.Metadata
import Mathlib

World "Johdanto"
Level 7

Title "Socrates (extra)"

Statement (Human : Type) (Men Mortal: Set (Human)) (Socrates : Human) (Socrates_is_human : Socrates ∈ Men) (mortality_of_men : ∀ man ∈ Men, man ∈ Mortal) : Socrates ∈ Mortal := by
  apply mortality_of_men
  exact Socrates_is_human
