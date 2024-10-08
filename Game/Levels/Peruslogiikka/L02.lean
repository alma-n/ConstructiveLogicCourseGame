import Game.Metadata

World "Peruslogiikka"
Level 3

Title "Kun Socrates on ihminen, tosi on totta"

Introduction "
Tavoitteena on todistaa, että `True` on totta kun Socrates on ihminen. Koska tosi on aina totta, emme edes tarvitse sitä varten tietoa Socrateksen lajista, joten voimme `intro`:n jälkeen unohtaa sen.
"

Statement (Socrates_is_human : Prop) : Socrates_is_human → True := by
  Hint "Aloita olettamalla implikaation vasen puoli (`intro`)"
  intro _h
  Hint "Minkä niminen oli `True`:n todistusalkio?"
  exact trivial
