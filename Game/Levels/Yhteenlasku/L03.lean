import Game.Metadata

World "Yhteenlasku"
Level 4

Title "Yhteenlaskua"

Introduction "Tämä taso on varsin samankaltainen kuin edellinen. Tällä kertaa todistat, että succ (m) + n = succ (m + n). Onnea matkaan!"

open Nat

Statement (n m : Nat) : succ (m) + n = succ (m + n) := by
  Hint "Induktio saattaa olla hyödyksi tätä tasoa ratkaistaessa :)"
  induction n
  rfl
  rw [add_succ, add_succ, n_ih]

Conclusion "Hyvä sinä! Olet nyt valmis todistamaan asteen haastavampia tehtäviä."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.zero_add
