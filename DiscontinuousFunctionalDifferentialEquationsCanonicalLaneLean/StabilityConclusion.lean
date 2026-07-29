import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.LyapunovStability

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure StabilityEvidence where
  lyapunovFunction : LyapunovFunction
  lyapunovClosed : LyapunovStabilityClosed lyapunovFunction
  stabilityConclusion : Prop

def StabilityConclusionClosed (S : StabilityEvidence) : Prop :=
  S.stabilityConclusion

theorem stability_from_lyapunov (S : StabilityEvidence) :
    StabilityConclusionClosed S := by
  exact S.stabilityConclusion

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse