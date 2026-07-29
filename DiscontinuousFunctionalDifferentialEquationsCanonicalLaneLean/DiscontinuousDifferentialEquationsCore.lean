import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

/-!
# Discontinuous Functional Differential Equations Core Structures
-/

structure DiscontinuousDifferentialEquation where
  timeSpace : Type
  stateSpace : Type
  functionF : timeSpace → stateSpace → stateSpace
  discontinuitySet : Set (timeSpace × stateSpace)
  jumpCondition : Prop
  smoothOutsideDiscontinuity : Prop

def DiscontinuousDifferentialEquationWellposed (eq : DiscontinuousDifferentialEquation) : Prop :=
  eq.jumpCondition ∧ eq.smoothOutsideDiscontinuity

structure SolutionConcept where
  equation : DiscontinuousDifferentialEquation
  solutionSpace : Type
  existenceTheorem : Prop
  uniquenessTheorem : Prop
  stabilityProperty : Prop
  existenceProof : existenceTheorem
  uniquenessProof : uniquenessTheorem
  stabilityProof : stabilityProperty

def SolutionConceptClosed (sc : SolutionConcept) : Prop :=
  sc.existenceTheorem ∧ sc.uniquenessTheorem ∧ sc.stabilityProperty

theorem solution_concept_closed_from_evidence (sc : SolutionConcept) :
    SolutionConceptClosed sc := by
  exact And.intro sc.existenceProof (And.intro sc.uniquenessProof sc.stabilityProof)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
