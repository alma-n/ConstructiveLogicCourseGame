import Game.Metadata

World "Funktio"
Level 7

Title "Muodosta LEAN"

Statement (L E A N X Y W : Prop) (hlx : L → X) (hey : E → Y) (haw : A → W) (hn : X → Y → W → N) : L → E → A → N := by
  intro l e a
  apply hn
  exact hlx l
  exact hey e
  exact haw a
