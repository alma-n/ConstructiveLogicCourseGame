import Game.Metadata

World "Peruslogiikka"
Level 7

Title "Saastuneet oletukset"

Statement (hf : False) : True → False := by
  intro _h
  exact hf

Conclusion "Pystyimme tässä tasossa näennäisesti 'todistamaan' jotakin, minkä tiedämme vääräksi edellisen tason perusteella. Miksi? Selkeästi siksi, että oletuksistamme löytyi oletus 'False'. Tämä taso havainnollistaa hyvin, kuinka tärkeä konsistentti pohja on matematiikkaa tehdessä"
