import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DFDEGateLemmas

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

def ConstrainedDFDEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dfde_endgame (A : AdmissibleClass) :
    ConstrainedDFDEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse