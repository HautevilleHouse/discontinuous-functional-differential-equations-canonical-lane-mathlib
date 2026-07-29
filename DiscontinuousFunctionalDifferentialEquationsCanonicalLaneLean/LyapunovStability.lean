import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.FilippovRegularization

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure LyapunovFunction where
  functionDefined : Prop
  positiveDefinite : Prop
  derivativeAlongFlow : Prop
  dissipationInequality : Prop

def LyapunovStabilityClosed (L : LyapunovFunction) : Prop :=
  L.functionDefined ∧ L.positiveDefinite ∧ L.derivativeAlongFlow ∧ L.dissipationInequality

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse