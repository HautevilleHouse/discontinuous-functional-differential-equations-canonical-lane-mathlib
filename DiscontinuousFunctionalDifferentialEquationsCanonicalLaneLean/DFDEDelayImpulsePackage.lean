import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DFDEAdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure DelayImpulsePackage where
  delayType : String
  impulseType : String
  solutionExistence : Prop
  uniquenessUnderConditions : Prop
  stabilityProperty : Prop

structure DelayImpulseEvidence (D : DelayImpulsePackage) where
  solutionExistenceClosed : D.solutionExistence
  uniquenessUnderConditionsClosed : D.uniquenessUnderConditions
  stabilityPropertyClosed : D.stabilityProperty

def DelayImpulseClosed (D : DelayImpulsePackage) : Prop :=
  D.solutionExistence ∧ D.uniquenessUnderConditions ∧ D.stabilityProperty

theorem delay_impulse_closed_from_evidence (D : DelayImpulsePackage)
    (E : DelayImpulseEvidence D) : DelayImpulseClosed D := by
  exact And.intro E.solutionExistenceClosed
    (And.intro E.uniquenessUnderConditionsClosed E.stabilityPropertyClosed)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse