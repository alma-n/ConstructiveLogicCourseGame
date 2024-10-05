import Game.Metadata
import Mathlib.Tactic.Use

World "EksistenssiKvanttori"
Level 3

Title "Otsikko"

Statement : ∃(x : Nat), x^2 + 2*x - 7 = 73 := by
  use 8

Conclusion "Hyvä sinä, onnistuit ratkaisemaan tason! Jäikö jokin tehtävässä vaivaamaan?

Koetitko kenties syöttää ratkaisukenttään 'use -10' ja huomasit,että Lean ei hyväksy ratkaisuasi? Tämä ei onneksi johdu siitä, että Lean olisi erehtyväinen, vaan siitä, että x:n tyypiksi ollaan spesifioitu luonnolliset luvut (Nat), jollainen -10 ei ole.
"
