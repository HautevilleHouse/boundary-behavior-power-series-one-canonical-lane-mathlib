import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.boundaryBehaviorState

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.boundaryBehaviorState

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
