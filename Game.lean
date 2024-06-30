import Game.Levels.Johdanto
import Game.Levels.Peruslogiikka
import Game.Levels.Implikaatio
import Game.Levels.Disjunktio
import Game.Levels.Konjunktio
import Game.Levels.DisjunktioJaKonjunktio
import Game.Levels.Aritmetiikka
import Game.Levels.Yhteenlasku
import Game.Levels.Kertolasku

-- Here's what we'll put on the title screen
Title "Konsruktiivinen logiikka ja formaali todistaminen"
Introduction
"
Tervetuloa konstruktiivisen logiikan ja formaalin todistamisen kurssille! Kurssimateriaali löytyy [täältä](TODO).

Kurssin tehtäväalustana käytämme pelimuotoista oppimisympäristöä, jossa pääset opiskelemaan muun muassa logiikan perusteita, formaalia todistamista sekä Lean -todistusassistentin hyödyntämistä todistusten kirjoittamisessa.

## Edistyksen tallentuminen

Edistyksesi tallentuu automaattisesti siihen selaimeesi, jolla peliä pelaat. Jos haluat tallentaa edistyksesi tiedostoon, avaa hampurilaismenu sivun oikeasta ylänurkasta, ja paina `Download`.

"

Info "
Olemmen pelialustan kehityksessä hyödyntäneet [Lean Game Serverin](https://adam.math.hhu.de/#/) pelien rakennetta sekä joitakin tehtäviä. Haluaisimme erityisesti kiittää:

* **Alkuperäisen Natural Number Game Lean3-version kehittäjät:** Kevin Buzzard, Mohammad Pedramfar
* **Natural Number Game Lean4-version kehittäjät:** Kevin Buzzard, Jon Eugster
* **Set Theory Game kehittäjä:** Daniel J. Velleman
* **A Lean Intro to Logic kehittäjä:** Mark Fischer
* **Pelimoottori:** Alexander Bentkamp, Jon Eugster, Patrick Massot
"

/-! Information to be displayed on the servers landing page. -/
Languages "Finnish"
CaptionShort "Game Template"
CaptionLong "You should use this game as a template for your own game and add your own levels."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"
Dependency Johdanto → Peruslogiikka
Dependency Peruslogiikka → Disjunktio
Dependency Peruslogiikka → Konjunktio
Dependency Peruslogiikka → Implikaatio
Dependency Disjunktio → DisjunktioJaKonjunktio
Dependency Konjunktio → DisjunktioJaKonjunktio
Dependency Implikaatio → Aritmetiikka
Dependency Aritmetiikka → Yhteenlasku
Dependency Aritmetiikka → Kertolasku

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
