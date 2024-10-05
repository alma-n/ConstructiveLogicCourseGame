
import Game.Metadata

World "Peruslogiikka"
Level 15

Title "Peruslogiikka 14"

Introduction "Tässä tasossa tutustutaan tilanteeseen, jossa dijunktio on kontekstissa eikä maalissa. Hyödyllinen taktiikka tähän tilanteeseen on 'cases', jonka avulla käydään läpi todistus kaikille disjunktion arvoille.

Tämä taso kannattaa siis aloittaa kirjoittamalla vastauskenttään 'cases h'
"

Statement (h : A ∨ B) : B ∨ A := by
  cases h
  right
  exact h_1
  left
  exact h_1

NewTactic cases
