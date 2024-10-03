import Game.Metadata

World "Peruslogiikka"
Level 1

Title "Tosi on tosi"

Introduction "
Logiikka tarvitsee konseptin totuudesta. Väitteet voivat olla totta määritelmän mukaan, niin kuin opimme johdanto maailmassa, mutta väite voi myös olla aina totta, jolloin sitä kutsutaan _tautologiaksi_. Leanissä väite `True` on sellainen tautologia, ja sille löytyy aina todistusalkio `trivial : True`.

Ratkaise kenttä syöttämällä todistusalkio `exact` taktiikalle.

Tosi on tosi, ja `trivial` on sen todistus.
"

Statement : True := by
  exact trivial

Conclusion "This last message appears if the level is solved."

TheoremDoc trivial as "trivial" in "True"

NewTheorem trivial
