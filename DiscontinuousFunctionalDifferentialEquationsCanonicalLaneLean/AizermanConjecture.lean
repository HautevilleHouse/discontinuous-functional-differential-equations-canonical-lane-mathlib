import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure AizermanConjecturePackage where
  system : Type u
  nonlinearity : Type u → Type u
  sectorCondition : Prop
  absoluteStability : Prop

structure AizermanConjectureEvidence (A : AizermanConjecturePackage) where
  sectorConditionClosed : A.sectorCondition
  absoluteStabilityClosed : A.absoluteStability

def AizermanConjectureClosed (A : AizermanConjecturePackage) : Prop :=
  A.sectorCondition ∧ A.absoluteStability

theorem aizerman_conjecture_closed_from_evidence (A : AizermanConjecturePackage) (E : AizermanConjectureEvidence A) : AizermanConjectureClosed A := by
  exact And.intro E.sectorConditionClosed E.absoluteStabilityClosed

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse