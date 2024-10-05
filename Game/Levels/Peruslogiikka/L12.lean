
import Game.Metadata

World "Peruslogiikka"
Level 13

Title "Socrates on ihminen, tai Socrates on kilpikonna"

Introduction "
Kahden väitteen $P$ ja $Q$ **disjunktio** $P ∧ Q$ (luetaan 'P tai Q') tarkoittaa sitä, että ainakin toinen väitteistä $P$ ja $Q$ on totta.

Leanissä todistus disjunktiosta voidaan tehdään valitsemalla todistettava puoli lauseesta käyttämällä **left**- tai **right**-taktiikkaa.

Kannattaa valita tarkasti, koska toinen puoli lauseesta ei väistämättä ole todistettavissa.
"

Statement (Socrates_is_human Socrates_is_turtle: Prop) (h : Socrates_is_human): Socrates_is_human ∨ Socrates_is_turtle := by
  left
  exact h

NewTactic left right
