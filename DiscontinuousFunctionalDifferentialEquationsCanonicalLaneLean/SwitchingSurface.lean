import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure SwitchingSurfacePackage where
  switchingManifold : Set (ℝ × Type u)
  crossingConditions : Prop
  slidingDynamics : Prop

structure SwitchingSurfaceEvidence (S : SwitchingSurfacePackage) where
  crossingConditionsClosed : S.crossingConditions
  slidingDynamicsClosed : S.slidingDynamics

def SwitchingSurfaceClosed (S : SwitchingSurfacePackage) : Prop :=
  S.crossingConditions ∧ S.slidingDynamics

theorem switching_surface_closed_from_evidence (S : SwitchingSurfacePackage) (E : SwitchingSurfaceEvidence S) : SwitchingSurfaceClosed S := by
  exact And.intro E.crossingConditionsClosed E.slidingDynamicsClosed

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse