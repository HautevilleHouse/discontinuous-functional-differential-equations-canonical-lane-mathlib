import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure FilippovConvexificationPackage where
  vectorField : ℝ → Type u → Type u
  convexHullVals : Type u → Set (Type u)
  differentialInclusionDefined : Prop
  solutionsExistLocally : Prop

structure FilippovConvexificationEvidence (F : FilippovConvexificationPackage) where
  differentialInclusionDefinedClosed : F.differentialInclusionDefined
  solutionsExistLocallyClosed : F.solutionsExistLocally

def FilippovConvexificationClosed (F : FilippovConvexificationPackage) : Prop :=
  F.differentialInclusionDefined ∧ F.solutionsExistLocally

theorem filippov_convexification_closed_from_evidence (F : FilippovConvexificationPackage) (E : FilippovConvexificationEvidence F) : FilippovConvexificationClosed F := by
  exact And.intro E.differentialInclusionDefinedClosed E.solutionsExistLocallyClosed

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse