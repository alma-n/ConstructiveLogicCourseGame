import Game.Metadata

World "Peruslogiikka"
Level 4

Title "Socrates on ihminen kun tosi on totta"

Introduction "
Koska oletuksissa on todistus `h` väitteelle `Socrates_is_human`, voimme käyttää sitä todistamaan `Socrates_is_human`.
"

Statement (Socrates_is_human : Prop) (h : Socrates_is_human) : True → Socrates_is_human := by
  intro _t
  exact h
