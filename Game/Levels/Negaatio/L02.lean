import Game.Metadata

World "Negaatio"
Level 3

Title "Epätodesta voidaan todistaa mitä tahansa"

Introduction "Edellisessä tehtävässä huomattiin, että tapauksessa, jossa kontekstista löytyy epätotuus, voidaan todistaa 'False'. Tässä tasossa havainnollistetaan, että tällaisessa tapauksessa voidaan oikeastaan todistaa mitä tahansa, esimerkiksi se, että Socrates syö kenkiä."

Statement (socrates_syo_kenkia : Prop) (f : False) : socrates_syo_kenkia := by
  Hint "Kannattaa kokeilla 'exfalso'-taktiikkaa, jonka avulla todistat väitteen todistamalla sen negaatiosta syntyvän ristiriidan."
  exfalso
  exact f

NewTactic exfalso
