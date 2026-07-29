import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

/-!
# Functional Differential Equations with Delay
-/

structure DelayFunctionalDifferentialEquation where
  baseEquation : DiscontinuousDifferentialEquation
  delayFunction : baseEquation.timeSpace → baseEquation.timeSpace
  stateHistory : baseEquation.timeSpace → baseEquation.stateSpace
  historyCondition : Prop

def DelayFunctionalDifferentialEquationWellposed (eq : DelayFunctionalDifferentialEquation) : Prop :=
  eq.baseEquation.jumpCondition ∧ eq.baseEquation.smoothOutsideDiscontinuity ∧ eq.historyCondition

structure AveragingPrinciple where
  fastSystem : DiscontinuousDifferentialEquation
  slowSystem : DiscontinuousDifferentialEquation
  averagingTheorem : Prop
  errorBound : Prop
  averagingProof : averagingTheorem
  errorBoundProof : errorBound

def AveragingPrincipleClosed (ap : AveragingPrinciple) : Prop :=
  ap.averagingTheorem ∧ ap.errorBound

theorem averaging_principle_closed_from_evidence (ap : AveragingPrinciple) :
    AveragingPrincipleClosed ap := by
  exact And.intro ap.averagingProof ap.errorBoundProof

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
