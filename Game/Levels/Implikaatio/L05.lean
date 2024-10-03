import Game.Metadata

World "Implikaatio"
Level 6

Title "SER"

Statement (hlx : L → X) (hey : E → Y) (haw : A → W) (hn : X → Y → W → N) : L → E → A → N := by
  intro l e a
  apply hn
  exact hlx l
  exact hey e
  exact haw a
