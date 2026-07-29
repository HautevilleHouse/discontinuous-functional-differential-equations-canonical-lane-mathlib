import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.MethodOfSteps

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquations

structure LyapunovKrasovskiiPackage {D : DiscontinuousDelayEquation}
    (M : MethodOfStepsPackage D) where
  lyapunovFunctional : (stateSpace → ℝ) → ℝ
  derivativeEstimate : Prop
  stabilityCondition : Prop

structure LyapunovKrasovskiiEvidence {D : DiscontinuousDelayEquation}
    {M : MethodOfStepsPackage D} (L : LyapunovKrasovskiiPackage M) where
  derivativeEstimateClosed : L.derivativeEstimate
  stabilityConditionClosed : L.stabilityCondition

def LyapunovKrasovskiiClosed {D : DiscontinuousDelayEquation}
    {M : MethodOfStepsPackage D} (L : LyapunovKrasovskiiPackage M) : Prop :=
  L.derivativeEstimate ∧ L.stabilityCondition

theorem lyapunov_krasovskii_closed_from_evidence
    {D : DiscontinuousDelayEquation} {M : MethodOfStepsPackage D}
    (L : LyapunovKrasovskiiPackage M) (E : LyapunovKrasovskiiEvidence L) :
    LyapunovKrasovskiiClosed L := by
  exact And.intro E.derivativeEstimateClosed E.stabilityConditionClosed

end DiscontinuousFunctionalDifferentialEquations
end HautevilleHouse
