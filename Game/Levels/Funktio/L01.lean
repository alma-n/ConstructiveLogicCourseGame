
import Game.Metadata

World "Funktio"
Level 2

Title "Vakiofunktio"

Introduction "
Vakiofunktio on sellainen funktio, jonka arvo ei riipu syötteestä. Esim `fun a => 5 : A → ℕ` on vakiofunktio, joka aina palauttaa luvun $5$.
"

Statement (A B : Type) (b : B) : A → B := by
  Hint "Ainoa `B`:n alkio, joka on tiedossa on `b`"
  exact fun _a => b

OnlyTactic exact
