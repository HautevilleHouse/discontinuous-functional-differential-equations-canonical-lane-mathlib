import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.DiscontinuousDFEModel

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure FilippovRegularization where
  convexHullDefined : Prop
  measurableSelection : Prop
  existenceOfSolution : Prop
  uniquenessConditions : Prop
  slidingModeDynamics : Prop

def FilippovClosed (F : FilippovRegularization) : Prop :=
  F.convexHullDefined ∧ F.measurableSelection ∧ F.existenceOfSolution ∧
  F.uniquenessConditions ∧ F.slidingModeDynamics

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse