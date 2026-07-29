import BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.RadialLimits

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure FatouTheoremPackage (A : AdmissibleClass) where
  radialLimitExistsAlmostEverywhere : Prop
  boundaryFunctionDefined : Prop
  radialLimitEqualsBoundaryValues : Prop

def FatouTheoremClosed (F : FatouTheoremPackage) : Prop :=
  F.radialLimitExistsAlmostEverywhere ∧
  F.boundaryFunctionDefined ∧
  F.radialLimitEqualsBoundaryValues

theorem fatou_theorem_closed (F : FatouTheoremPackage) : FatouTheoremClosed F := by
  exact And.intro F.radialLimitExistsAlmostEverywhere
    (And.intro F.boundaryFunctionDefined F.radialLimitEqualsBoundaryValues)

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse