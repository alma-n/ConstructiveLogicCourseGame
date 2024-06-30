import Game.Metadata

World "Peruslogiikka"
Level 6

Title "Totuusarvotaulukot"

Statement : ¬(True → False) := by
  intro h
  apply h
  trivial
