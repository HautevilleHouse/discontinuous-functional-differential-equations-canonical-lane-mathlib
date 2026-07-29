import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure JumpConditionPDEPackage where
  domain : Type u
  jumpSet : Set domain
  preJumpOperator : LinearOperator (domain → ℝ) (domain → ℝ)
  postJumpOperator : LinearOperator (domain → ℝ) (domain → ℝ)
  jumpCondition : Prop
  pdeOutsideJump : Prop
  solutionRegularity : Prop

structure JumpConditionPDEEvidence (J : JumpConditionPDEPackage) where
  jumpConditionClosed : J.jumpCondition
  pdeOutsideJumpClosed : J.pdeOutsideJump
  solutionRegularityClosed : J.solutionRegularity

def JumpConditionPDEClosed (J : JumpConditionPDEPackage) : Prop :=
  J.jumpCondition ∧ J.pdeOutsideJump ∧ J.solutionRegularity

theorem jump_condition_pde_closed_from_evidence (J : JumpConditionPDEPackage)
    (E : JumpConditionPDEEvidence J) : JumpConditionPDEClosed J := by
  exact And.intro E.jumpConditionClosed
    (And.intro E.pdeOutsideJumpClosed E.solutionRegularityClosed)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
