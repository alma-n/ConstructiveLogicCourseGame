import Game.Metadata

World "Johdanto"
Level 1

Title "Määritelmällisesti yhtäsuuri"

Introduction "
Ensimmäiset asiat, johon lähes jokainen formalisoija törmää on määritelmät.

Määritelmät ovat aivan formalisoinnin ydin, koska emme voisi sanoa mitään, jos millään sanalla ei olisi merkitystä.

Esimerkiksi yhtäsuuruus on määritetty niin, että kaikki lauseet muotoa $x = y$ on totta, kun $x$ on määritelmällisesti sama kuin $y$. $x$:n ja $y$:n paikalla saa olla mikä tahansa lauseke. Se milloin asiat ovat määritelmällisesti yhtäsuuria on tärkeä osa [tyyppiteoriaa](https://en.wikipedia.org/wiki/Type_theory) ja monimutkaisempi kysymys kuin kuvittelisikaan.

Seuraavat lauseet ovat määritelmällisesti totta:
- $x = x$
- $x + 1 = x + 1$
- $x * (y + z) = x * (y + z)$

Mutta seuraavat eivät (yleisesti ottaen) ole:
- $x = y$
- $x + 1 = 1 + x$
- $x + y = y + x$
- $x * 5 = 5 * x$

Kun todistettava väite (Goal) on yhtäsuuruus jonka molemmilla puolilla on määritelmällisesti samat lausekkeet voidaan käyttää `rfl`-taktiikka, eli **refleksiivisyyttä**$^1$, todistamaan lause.

$^1$ Katso [Equality (wikipedia)](<https://en.wikipedia.org/wiki/Equality_(mathematics)>)
"

Statement : 5 * x + 8 * y = 5 * x + 8 * y := by
  Hint "Syötä `rfl`"
  rfl

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
