import Game.Metadata

World "Yhteenlasku"
Level 5

Title "Yhteenlaskun kommutatiivisuus"

Introduction "Tämän tason tarkoitus on todistaa yhtennlaskun kommutatiivisuus luonnollisille luvuille. Toisin sanoen todistat seuraavaksi, että kaikille luonnollisille luvuille n ja m pätee, että n + m = m + n"

open Nat

Statement (n m : Nat) : n + m = m + n := by
  Hint "Olet varmaankin edellisistä tasoista oppinut, että induktio on varsin hyödyllinen työkalu tähän tilanteeseen"
  induction n
  rw [Nat.add_zero, Nat.zero_add]
  rw [Nat.add_succ, Nat.succ_add, n_ih]

Conclusion "Olet nyt todistanut, että luonnollisten lukujen yhteenlasku kommutoi. Tämä on varsin hyödyllistä tietää."

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem Nat.succ_add
