
import Game.Metadata

World "Implikaatio"
Level 8

Title "Title"

Introduction "Tässä tasossa tehtävänä on löytää jokin reitti P:stä U:hun. Visualisaatio on usein hyvä tapa havainnollistaa tilannetta:

$$
\\begin{CD}
  P  @>{h₁}>> Q       @>{h₂}>> R \\\\
  @.         @VV{h₃}V           \\\\
  S  @>>{h₄}> T       @>>{h₅}> U
\\end{CD}
$$

"

Statement (P Q R S T U: Prop) (p : P) (h1 : P → Q) (h2 : Q → R) (h3 : Q → T) (h4 : S → T) (h5 : T → U) : U := by
  apply h5 ∘ h3 ∘ h1
  exact p
