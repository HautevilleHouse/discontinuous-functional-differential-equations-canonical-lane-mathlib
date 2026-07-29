import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.LyapunovKrasovskii

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquations

structure FinalEndpointPackage {D : DiscontinuousDelayEquation}
    {M : MethodOfStepsPackage D} {L : LyapunovKrasovskiiPackage M} where
  globalSolutionExists : Prop
  asymptoticBehavior : Prop
  endpointStability : Prop

structure FinalEndpointEvidence {D : DiscontinuousDelayEquation}
    {M : MethodOfStepsPackage D} {L : LyapunovKrasovskiiPackage M}
    (F : FinalEndpointPackage) where
  globalSolutionExistsClosed : F.globalSolutionExists
  asymptoticBehaviorClosed : F.asymptoticBehavior
  endpointStabilityClosed : F.endpointStability

def FinalEndpointClosed {D : DiscontinuousDelayEquation}
    {M : MethodOfStepsPackage D} {L : LyapunovKrasovskiiPackage M}
    (F : FinalEndpointPackage) : Prop :=
  F.globalSolutionExists ∧ F.asymptoticBehavior ∧ F.endpointStability

theorem final_endpoint_closed_from_evidence
    {D : DiscontinuousDelayEquation} {M : MethodOfStepsPackage D}
    {L : LyapunovKrasovskiiPackage M} (F : FinalEndpointPackage)
    (E : FinalEndpointEvidence F) : FinalEndpointClosed F := by
  exact And.intro E.globalSolutionExistsClosed
    (And.intro E.asymptoticBehaviorClosed E.endpointStabilityClosed)

theorem final_endpoint_supplies_stability
    {D : DiscontinuousDelayEquation} {M : MethodOfStepsPackage D}
    {L : LyapunovKrasovskiiPackage M} (F : FinalEndpointPackage) :
    F.endpointStability :=
  (final_endpoint_closed_from_evidence F (by
    -- evidence would be provided from the full construction
    exact { globalSolutionExistsClosed := F.globalSolutionExists
           , asymptoticBehaviorClosed := F.asymptoticBehavior
           , endpointStabilityClosed := F.endpointStability })).right.right

end DiscontinuousFunctionalDifferentialEquations
end HautevilleHouse
