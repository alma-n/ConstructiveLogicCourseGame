import Game.Metadata

World "Peruslogiikka"
Level 4

Title "Socrates on mies kun tosi on totta"

Introduction "
Koska oletuksissa on todistus `h` väitteelle `Socrates_is_man`, voimme käyttää sitä todistamaan `Socrates_is_man`.
"

Statement (Socrates_is_man : Prop) (h : Socrates_is_man) : True → Socrates_is_man := by
  intro _t
  exact h
