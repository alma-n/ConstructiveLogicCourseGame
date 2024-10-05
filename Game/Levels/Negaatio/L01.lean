import Game.Metadata

World "Negaatio"
Level 2

Title "Epätodesta voidaan todistaa epätosi"

Introduction ""

Statement (f : False) : False := by
  exact f

Conclusion "Myös epätotuudet voidaan siis todistaa, mikäli kontekstista löytyy epätotuus."
