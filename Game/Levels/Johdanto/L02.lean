import Game.Metadata

World "Johdanto"
Level 3

Title "Socrates on mies 1"

Introduction "Tässä tasossa tehtävänä on todistaa, että tiedosta 'Socrates on mies' seuraa tieto 'Socrates on mies.'

Todistus alkaa tällä kertaa olettamalla, että väite 'Socrates on mies' implikaationuolen vasemmalla puolella pitää paikkansa, jolloin saamme sen kontekstiin, ja tavoitteeksi jää osoittaa, että 'Socrates on mies'.

Lean

Huomataan siis, että ollaan päädytty täysin identtiseen tilan
"

Statement (Socrates_is_man : Prop) : Socrates_is_man → Socrates_is_man := by
  intro h
  exact h

NewTactic intro
