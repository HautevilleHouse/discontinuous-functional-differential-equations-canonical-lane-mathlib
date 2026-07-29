import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure DiscontinuousDFESystem where
  stateSpace : Type u
  timeDomain : Type v
  jumpSet : Type w
  flowMap : timeDomain → stateSpace → stateSpace
  jumpMap : jumpSet → stateSpace → stateSpace
  switchingSignal : timeDomain → jumpSet
  filippovSolution : Prop

def DFESystemClosed (S : DiscontinuousDFESystem) : Prop :=
  S.filippovSolution

structure AdmittedObject where
  system : DiscontinuousDFESystem
  conclusion : DFESystemClosed system

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse