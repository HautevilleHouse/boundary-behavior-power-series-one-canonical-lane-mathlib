import BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Calculus.PowerSeries.Basic

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure RadialLimitPackage (A : AdmissibleClass) where
  pointOnCircle : ℂ
  radialApproach : ℝ → ℂ
  limitExists : ℂ → Prop
  limitValue : ℂ
  abscissaOfConvergence : ℝ

def RadialLimitClosed (P : RadialLimitPackage) : Prop :=
  P.limitExists P.limitValue

theorem radial_limit_closed (P : RadialLimitPackage) : RadialLimitClosed P := by
  exact P.limitExists P.limitValue

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse