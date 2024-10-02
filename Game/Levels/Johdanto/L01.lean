import Game.Metadata

World "Johdanto"
Level 2

Title "Socrates on mies"

Introduction "
Tässä kentässä todistamme seuraavan väitteen: Socrates on mies, kun tiedämme, että Socrates on mies.

Todistus etenee seuraavasti. Oletuksista tiedämme, että Socrates on mies, joten Socrates on mies. □

## Oliot ja oletukset

Lean esittää näytön alareunassa tärkeää tietoa tehtävän tilanteesta.

**Objects**-otsikon alla on listattu tehtävässä annettujen alkioiden tyypit. Alkio `Socrates_is_man` on tyyppiä `Prop`. `Prop` on loogisten väitteiden tyyppi, ja kaikki sen alkiot ovat loogisia väitteitä, eli `Socrates_is_man` on looginen väite. Myös esimerkiksi `1 = 2` on tyyppiä `Prop`.

**Assumptions**-otsikon alla on tehtävänannossa esitetyt oletukset ja niiden tyypit. Oletus `h` on tyyppiä `Socrates_is_man`, eli se on todistus väitteestä Socrates on mies.

Koska tavoitteena on todistaa se, mille `h` on jo todistus, voimme käyttää `h`:ta todistuksena käyttämällä `exact`-taktiikkaa.

## `exact`-taktiikka

`exact`-taktiikalle syötetään välilyönnillä erotettuna todistus väitteestä. Todistuksen on oltava _täsmälleen_ oikeasta väitteestä, tai Lean antaa virheen.

Ratkaise taso syöttämällä `exact h`
"

Statement (Socrates_is_man : Prop) (h : Socrates_is_man) : Socrates_is_man := by
  exact h

NewTactic exact
