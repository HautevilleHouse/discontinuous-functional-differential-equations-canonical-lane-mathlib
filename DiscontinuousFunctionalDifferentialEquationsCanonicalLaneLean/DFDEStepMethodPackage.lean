import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DFDEDelayImpulsePackage

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure StepMethodPackage where
  timeDiscretization : Type
  stepSizeControl : Prop
  convergenceGuarantee : Prop
  errorEstimate : Prop

structure StepMethodEvidence (S : StepMethodPackage) where
  stepSizeControlClosed : S.stepSizeControl
  convergenceGuaranteeClosed : S.convergenceGuarantee
  errorEstimateClosed : S.errorEstimate

def StepMethodClosed (S : StepMethodPackage) : Prop :=
  S.stepSizeControl ∧ S.convergenceGuarantee ∧ S.errorEstimate

theorem step_method_closed_from_evidence (S : StepMethodPackage)
    (E : StepMethodEvidence S) : StepMethodClosed S := by
  exact And.intro E.stepSizeControlClosed
    (And.intro E.convergenceGuaranteeClosed E.errorEstimateClosed)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse