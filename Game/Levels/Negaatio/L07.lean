import Game.Metadata

World "Negaatio"
Level 8

Title "Usean negaation yksinkertaistus 2"

Introduction ""

Statement (P : Prop) (h : ¬¬¬¬P) : ¬¬P := by
  intro p
  apply h
  intro np
  apply np
  exact p

Conclusion "Huomasimme edellisessä tehtävässä, että parittomat määrät negaatioita yksinkertaistuvat yhdeksi, ja tässä tehtävässä, että parilliset määrät kahdeksi."
