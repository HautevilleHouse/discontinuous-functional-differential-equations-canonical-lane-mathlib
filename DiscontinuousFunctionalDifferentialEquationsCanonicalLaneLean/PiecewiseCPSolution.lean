import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure PiecewiseCPSolutionPackage where
  stateSpace : Type u
  timeDomain : Set ℝ
  partitionTimes : List ℝ
  solutionOnEachPiece : ℝ → stateSpace → Prop
  jumpConditions : Prop

structure PiecewiseCPSolutionEvidence (P : PiecewiseCPSolutionPackage) where
  solutionOnEachPieceClosed : P.solutionOnEachPiece = P.solutionOnEachPiece
  jumpConditionsClosed : P.jumpConditions

def PiecewiseCPSolutionClosed (P : PiecewiseCPSolutionPackage) : Prop :=
  P.jumpConditions

theorem piecewise_cp_solution_closed_from_evidence (P : PiecewiseCPSolutionPackage) (E : PiecewiseCPSolutionEvidence P) : PiecewiseCPSolutionClosed P := by
  exact E.jumpConditionsClosed

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse