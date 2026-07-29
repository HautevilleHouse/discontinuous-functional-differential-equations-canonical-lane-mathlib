import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquations

structure DFDEClosedObject where
  stateSpace : Type
  stateTopology : TopologicalSpace stateSpace
  delayFunction : (stateSpace → ℝ) → stateSpace → ℝ
  functionalF : (stateSpace → ℝ) → stateSpace → ℝ
  solutionExists : Prop
  uniquenessHolds : Prop
  conclusion : solutionExists ∧ uniquenessHolds

def DFDEClosureClosed (O : DFDEClosedObject) : Prop :=
  O.solutionExists ∧ O.uniquenessHolds

end DiscontinuousFunctionalDifferentialEquations
end HautevilleHouse
