import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure StepMethodConvergencePackage where
  meshType : Type u
  stepFunction : meshType → ℝ → ℝ
  exactSolution : ℝ → ℝ
  localTruncationError : Prop
  stability : Prop
  consistency : Prop
  convergenceRate : Prop

structure StepMethodConvergenceEvidence (S : StepMethodConvergencePackage) where
  localTruncationErrorClosed : S.localTruncationError
  stabilityClosed : S.stability
  consistencyClosed : S.consistency
  convergenceRateClosed : S.convergenceRate

def StepMethodConvergenceClosed (S : StepMethodConvergencePackage) : Prop :=
  S.localTruncationError ∧ S.stability ∧ S.consistency ∧ S.convergenceRate

theorem step_method_convergence_closed_from_evidence
    (S : StepMethodConvergencePackage) (E : StepMethodConvergenceEvidence S) :
    StepMethodConvergenceClosed S := by
  exact And.intro E.localTruncationErrorClosed
    (And.intro E.stabilityClosed
      (And.intro E.consistencyClosed E.convergenceRateClosed))

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
