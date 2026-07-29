import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.boundaryLimitExists

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse