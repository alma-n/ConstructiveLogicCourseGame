import Game.Metadata

World "Negaatio"
Level 1

Title "Ei epätosi"

Introduction "Tämän tason tarkoituksena on todistaa, että epätosi ei ole totta."

Statement : ¬False := by
  Hint "Kannattaa aloittaa 'intro'-taktiikalla"
  intro f
  exact f
