import Game.Metadata

World "Johdanto"
Level 1

Title "Määritelmällisesti tosi"

Introduction "
Ensimmäiset asiat, johon lähes jokainen formalisoija törmää on määritelmät.

Määritelmät ovat aivan formalisoinnin ydin, koska emme voisi sanoa mitään, jos millään sanalla ei olisi merkitystä.

Esimerkiksi yhtäsuuruus on määritetty niin, että kaikki lauseet muotoa $x = x$ on tosi (määritelmällisesti), jossa $x$:n paikalla saa olla mikä tahansa lauseke.

Seuraavat lauseet ovat määritelmällisesti totta:
- $x = x$
- $x + 1 = x + 1$
- $x * (y + z) = x * (y + z)$

Mutta seuraavat eivät (yleisesti) ole:
- $x = y$
- $x + 1 = 1 + x$
- $x + y = y + x$
- $x * 5 = 5 * x$

Kun todistettava väite (Goal) on määritelmällisesti totta, `rfl` taktiikka yleensä todistaa väitteen ja _sulkee_ maalin.

Syötä syötekenttään `rfl` käyttääksesi määritelmällistä totuutta.
"

Statement : 5 * x + 8 * y = 5 * x + 8 * y := by
  rfl

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
