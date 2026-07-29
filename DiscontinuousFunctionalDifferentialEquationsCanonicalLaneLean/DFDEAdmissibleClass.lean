import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure DFDEAdmittedObject where
  delaySystemType : String
  impulseOperatorType : String
  solutionSpaceDefined : Prop
  existenceTheoremProved : Prop
  conclusion : existenceTheoremProved

structure AdmissibleClass where
  object : DFDEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse