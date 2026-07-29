import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DiscontinuousDelayEquations

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquations

structure MethodOfStepsPackage (D : DiscontinuousDelayEquation) where
  stepSize : ℝ
  stepFunction : ℕ → (stateSpace → ℝ) → ℝ
  continuationCondition : Prop
  convergenceEstimate : Prop

structure MethodOfStepsEvidence {D : DiscontinuousDelayEquation}
    (M : MethodOfStepsPackage D) where
  continuationConditionClosed : M.continuationCondition
  convergenceEstimateClosed : M.convergenceEstimate

def MethodOfStepsClosed {D : DiscontinuousDelayEquation}
    (M : MethodOfStepsPackage D) : Prop :=
  M.continuationCondition ∧ M.convergenceEstimate

theorem method_of_steps_closed_from_evidence
    {D : DiscontinuousDelayEquation} (M : MethodOfStepsPackage D)
    (E : MethodOfStepsEvidence M) : MethodOfStepsClosed M := by
  exact And.intro E.continuationConditionClosed E.convergenceEstimateClosed

end DiscontinuousFunctionalDifferentialEquations
end HautevilleHouse
