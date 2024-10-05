import Game.Metadata

World "Funktio"
Level 5

Title "Funktiokutsu kahdella argumentilla"

Introduction "
Tässä kentässä muodostetaan funktio, joka ottaa ensimmäisenä argumenttina sisään funktion `A → B → C`, toisena sisään `B`, kolmantena sisään `A` ja paluttaa alkion `C`:stä.
"

Statement : (A → B → C) → (B → A → C) := by
  exact fun f b a => f a b

OnlyTactic exact
