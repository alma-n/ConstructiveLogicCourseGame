
import Game.Metadata

World "Funktio"
Level 6

Title "Funktiokompositio"

Introduction "
Tässä tasossa yhdistetään kaksi funktiota peräkkäin muodostaen kolmas funktio. Kun $f : A → B$ ja $g : B → C$, funktioiden $f$ ja $g$ kompositio kirjoitetaan käyttäen $∘$ symbolia: $g ∘ f$, ja se saa tyypiksi $A → C$.

Funktiokompositio on määritelty seuraavasti: kun $g ∘ f$ kutsustaan alkiolla $a$, saadaan $g (f a)$.

Ratkaise tämä kenttä käyttämättä `fun`-sanaa.
"

Statement (A B C : Type) (f : A → B) (g : B → C) : A → C := by
  Hint "`_ ∘ _`"
  exact g ∘ f

OnlyTactic exact
NewTheorem Function.comp
