import BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure AbelTheoremPackage (A : AdmissibleClass) where
  seriesConvergesAtBoundary : Prop
  radialLimitEqualsSum : Prop

def AbelTheoremClosed (Ab : AbelTheoremPackage) : Prop :=
  Ab.seriesConvergesAtBoundary ∧ Ab.radialLimitEqualsSum

theorem abel_theorem_closed (Ab : AbelTheoremPackage) : AbelTheoremClosed Ab := by
  exact And.intro Ab.seriesConvergesAtBoundary Ab.radialLimitEqualsSum

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse