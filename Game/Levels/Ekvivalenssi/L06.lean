
import Game.Metadata

World "Ekvivalenssi"
Level 7

Title "↔ korvaaminen"

Introduction "
Koska `A ↔ B` tarkoittaa, että väitteet ovat 'sama', voidaan arbitraarisessa lausekkeessa **korvata** `A`:t `B`:llä tai päinvastoin.

Tähän on taktiikka `rewrite`, jolle annetaan hakasulkeilla `[]` lista ekvivalensseja jotka korvataan maalissa. Esim. kun `h1 : P ↔ Q`, niin `rewrite [h1]` muuttaa kaikki `P`:t `Q`:ksi.
"

Statement (Q P : Prop) (h1 : P ↔ Q) : (P → (¬ Q → ¬ P)) ↔ (Q → (¬ P → ¬ P)) := by
  rewrite [h1]
  rfl

NewTactic rewrite
