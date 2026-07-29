import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DFDEObjects

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquations

structure DiscontinuousDelayEquation where
  stateSpace : Type
  delayFunction : (stateSpace → ℝ) → stateSpace → ℝ
  discontinuitySet : Set (stateSpace × ℝ)
  functionalF : (stateSpace → ℝ) → stateSpace → ℝ
  initialCondition : stateSpace → ℝ
  solutionInterval : Set ℝ
  wellPosedness : Prop
  wellPosednessTerm : wellPosedness

def DiscontinuousDelayEquationClosed (D : DiscontinuousDelayEquation) : Prop :=
  D.wellPosedness

structure DiscontinuousDelayEquationEvidence (D : DiscontinuousDelayEquation) where
  wellPosednessClosed : D.wellPosedness

theorem discontinuous_delay_equation_closed_from_evidence
    (D : DiscontinuousDelayEquation) (E : DiscontinuousDelayEquationEvidence D) :
    DiscontinuousDelayEquationClosed D := by
  exact E.wellPosednessClosed

end DiscontinuousFunctionalDifferentialEquations
end HautevilleHouse
