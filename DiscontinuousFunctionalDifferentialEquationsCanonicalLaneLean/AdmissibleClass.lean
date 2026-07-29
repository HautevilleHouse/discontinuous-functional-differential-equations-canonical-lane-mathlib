import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousDFEClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse