import DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscontinuousDFEClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse