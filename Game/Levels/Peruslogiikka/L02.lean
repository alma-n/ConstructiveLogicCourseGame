import Game.Metadata

World "Peruslogiikka"
Level 3

Title "Kun Socrates on mies, tosi on totta"

Introduction "
Tavoitteena on todistaa, että `True` on totta kun Socrates on mies. Koska tosi on aina totta, emme edes tarvitse sitä varten tietoa Socrateksen sukupuolesta, joten voimme `intro`:n jälkeen unohtaa sen.
"

Statement (Socrates_is_man : Prop) : Socrates_is_man → True := by
  Hint "Aloita olettamalla implikaation vasen puoli (`intro`)"
  intro _h
  Hint "Minkä niminen oli `True`:n todistusalkio?"
  exact trivial
