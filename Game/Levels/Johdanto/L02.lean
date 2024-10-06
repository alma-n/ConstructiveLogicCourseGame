import Game.Metadata

World "Johdanto"
Level 3

Title "Socrates on ihminen 1"

Introduction "
Tässä tasossa tehtävänä on todistaa, että tiedosta 'Socrates on ihminen' seuraa tieto 'Socrates on ihminen.'

**Implikaatiosta**, eli loogisesta seurauksesta, käytetään nuolisymbolia $→$.

Todistus alkaa tällä kertaa olettamalla, että väite 'Socrates on ihminen' implikaationuolen vasemmalla puolella pitää paikkansa, jolloin saamme 'Socrates_is_human' osaksi oletuksia. Tavoitteeksi jää osoittaa, että 'Socrates on ihminen'. Ollaan siis päädytty täysin identtiseen tilaan, kuin edellisessä kentässä.

Leanissä voidaan siirtää implikaationuolen vasen puoli maalista oletuksiin käyttämällä `intro`-taktiikkaa. `intro`-taktiikalle voi syöttää välilyönnillä nimen, joka tulee oletuksen nimeksi.
"

Statement (Socrates_is_human : Prop) : Socrates_is_human → Socrates_is_human := by
  Hint "Aloita kirjoittamalla `intro h`"
  intro h
  Hint "Käytä juuri muodostamaasi oletusta todistamaan väite"
  exact h

Conclusion "
Huomaa, että voit navigoida todistusta liikkumalla eri riville, jolloin todistuksen _tila_ muuttuu.
"

NewTactic intro
