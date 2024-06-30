import Game.Metadata

World "Yhteenlasku"
Level 3

Title "Yhteenlaskua"

Introduction "Tällä kertaa tehtävänäsi on todistaa, että 0 + n = n. Et kuitenkaan vaihteeksi saa käyttöösi lemmaa, joka todistaa väitteen puolestasi. Yritä ratkaista taso hyödyntämällä tiedossasi olevia taktiikoita sekä lemmoja!"

open Nat

Statement (n : Nat) : 0 + n = n := by
  Hint "Induktio saattaa olla hyödyksi tätä tasoa ratkaistaessa :)"
  induction n
  rfl
  rw [add_succ]
  rw [n_ih]

Conclusion "Onnittelut! Osaat nyt kirjoittaa induktiotodistuksen leanillä. Tämä tulee olemaan suureksi hyödyksi tulevilla tasoilla"

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
-- NewLemma Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq


