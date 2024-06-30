import Game.Metadata

World "Peruslogiikka"
Level 5

Title "Totuusarvotaulukot"


Statement : False → True := by
  intro h
  exfalso
  exact h

NewTactic exfalso
