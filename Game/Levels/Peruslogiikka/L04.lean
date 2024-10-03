import Game.Metadata

World "Peruslogiikka"
Level 5

Title "Socrates ei ole kilpikonna"

Introduction "
Looginen **negaatio** väitteestä $P$ kirjoitetaan $¬ P$. Se tarkoittaa, että $P$:n ollessa tosi $¬ P$ on epätosi ja päin vastoin. Esimerkiksi `¬ True` on loogisesti `False`.

Kuten `True`, `False` on tyyppi, mutta se ei sisällä yhtäkään todistusalkiota. Tyyppiteoriassa negaatio tarkoittaa samaa kuin funktio `False`:en, eli `¬ P` on määritelmällisesti `P → False`.

Theorem Proving in Lean4 kirjassa on erinomainen kappale logiikasta tyyppiteoriassa: https://docs.lean-lang.org/theorem_proving_in_lean4/propositions_and_proofs.html
"

-- Statement (P : Prop) : ¬ P ↔ (P → False) := by
  -- rfl

Statement (Socrates_is_turtle : Prop) (h : ¬Socrates_is_turtle) : ¬Socrates_is_turtle := by
  exact h
