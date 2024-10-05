
import Game.Metadata

World "Disjunktio"
Level 5

Title "Disjunktio 4"

Statement (A B C D P : Prop) (h : A ∨ (B ∨ (C ∨ D))) (ha : A → P) (hb : B → P) (hc : C → P) (hd : D → P) : P := by
  cases h
  apply ha h_1
  cases h_1
  apply hb h
  cases h
  apply hc h_1
  apply hd h_1
