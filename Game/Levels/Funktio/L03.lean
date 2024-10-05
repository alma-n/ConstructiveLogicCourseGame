import Game.Metadata

World "Funktio"
Level 4

Title "Funktiokutsu"

Introduction "
Tässä kentässä muodostetaan funktio, joka ottaa ensimmäisenä argumenttina sisään funktion `B → A`, toisena sisään `B` ja paluttaa alkion `A`:sta. Muodostamme siis funktion, joka kutsuu funktiota...
"

Statement (A B : Type) : (B → A) → B → A := by
  Hint "Aloita kirjoittamalla `fun f b =>`"
  exact fun f b => f b

OnlyTactic exact
