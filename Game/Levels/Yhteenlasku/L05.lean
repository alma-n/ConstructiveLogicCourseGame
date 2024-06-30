import Game.Metadata

World "Yhteenlasku"
Level 6

Title "Yhteenlaskun assosiatiivisuus"

Introduction "Tällä kerralla tehtävänäsi on todistaa yhteenlaskun assosiatiivisuus luonnollisille luvuille. Toisin sanoen todistat seuraavaksi, että kaikille luonnollisille luvuille n, m ja l pätee, että n + (m + l) = (n + m) + l."

open Nat

Statement (n m l : Nat) : n + (m + l) = (n + m) + l := by
  Hint "Olet varmaankin edellisistä tasoista oppinut, että induktio on varsin hyödyllinen työkalu tähän tilanteeseen"
  induction n
  rw [Nat.zero_add]
  rw [Nat.zero_add]
  rw [Nat.succ_add]
  rw [Nat.succ_add]
  rw [Nat.succ_add, n_ih]

Conclusion "Olet nyt todistanut, että luonnolliset lukujen yhteenlasku on assosiatiivista. Tämä on varsin hyödyllistä tietää. Hienosti tehty!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
