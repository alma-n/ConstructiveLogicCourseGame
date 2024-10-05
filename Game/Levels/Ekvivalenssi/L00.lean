
import Game.Metadata

World "Ekvivalenssi"
Level 1

Title "Socrates on mies ↔ Socrates on mies"

Introduction "
Kun kahden väitteen $P$ ja $Q$ välillä on looginen implikaatio molempiin suuntiin, eli $P → Q$ ja $Q → P$, sanotaan että $P$ _jos ja vain jos_ $Q$. Looginen **ekvivalenssi** tarkoittaa samaa, eli $P$ on ekvivalentti $Q$:n kanssa.

Ekvivalenssi merkitään $\\leftrightarrow$-merkillä, esim. $P \\leftrightarrow Q$.

Kuten yhtäsuuruus, ekvivalenssi on _refleksiivninen_, eli väitteen `A ↔ A` voi todistaa taktiikalla `rfl`.
"

-- TheoremDoc MyNat.zero_mul as "zero_mul" in "*"

Statement Iff.rfl (Socrates_is_man : Prop) : Socrates_is_man ↔ Socrates_is_man := by
  Hint "Todista väite käyttämällä `rfl`-taktiikkaa"
  rfl

NewTactic rfl
