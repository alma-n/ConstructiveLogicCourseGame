import Game.Metadata

World "Johdanto"
Level 2

Title "Socrates on ihminen 0"

Introduction "
Tässä kentässä todistamme seuraavan väitteen: Socrates on ihminen, kun tiedämme, että Socrates on ihminen.

Todistus etenee seuraavasti. Oletuksista tiedämme, että Socrates on ihminen, joten Socrates on ihminen. □

## Oliot ja oletukset

Lean esittää näytön alareunassa tärkeää tietoa tehtävän tilanteesta.

**Objects**-otsikon alla on listattu tehtävässä käytettyjen alkioiden tyypit. Alkio `Socrates_is_human` on tyyppiä `Prop`. `Prop` on loogisten väitteiden tyyppi, ja kaikki sen alkiot ovat loogisia väitteitä, eli `Socrates_is_human` on looginen väite. Myös esimerkiksi `1 = 2` on tyyppiä `Prop`.

**Assumptions**-otsikon alla on tehtävänannossa esitetyt oletukset ja niiden tyypit. Oletus `h` on tyyppiä `Socrates_is_human`, eli se on todistus väitteestä Socrates on ihminen. Vinkki: sijoittamalla kursori `Socrates_is_human` tyypin päälle, saat lisätietoa tyypistä.

Koska tavoitteena on todistaa väite, mille `h` on jo todistus, voimme käyttää `h`:ta todistuksena käyttämällä `exact`-taktiikkaa.

## `exact`-taktiikka

`exact`-taktiikalle syötetään välilyönnillä erotettuna todistus väitteestä. Todistuksen on oltava _täsmälleen_ oikeasta väitteestä, tai Lean antaa virheen.
"

Statement (Socrates_is_human : Prop) (h : Socrates_is_human) : Socrates_is_human := by
  Hint "Ratkaise taso syöttämällä `exact h`"
  exact h

NewTactic exact
