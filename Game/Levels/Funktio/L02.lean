import Game.Metadata

World "Funktio"
Level 3

Title "Funktio 1"

Introduction "
Funktio, joka ottaa kaksi argumenttia, voidaan kirjoittaa laittamalla argumenttien nimet `fun`-sanan perään: `fun a b => a + b`. Tämä on vain lyhennys funktiosta, joka palauttaa funktion: `fun a => fun b => a + b`. Molemmat ovat siis tyyppiä `ℕ → (ℕ → ℕ)`. Koska funktiotyyppi sulutetaan oikealta lähtien, `ℕ → (ℕ → ℕ)` on sama kuin `ℕ → ℕ → ℕ`.

Esimerkiksi `fun a b => b` on tyyppiä `A → B → B`. Mitä tyyppiä `fun a b => a` olisi?
"

Statement (A B : Type) : A → B → A := by
  exact fun a _b => a

OnlyTactic exact
