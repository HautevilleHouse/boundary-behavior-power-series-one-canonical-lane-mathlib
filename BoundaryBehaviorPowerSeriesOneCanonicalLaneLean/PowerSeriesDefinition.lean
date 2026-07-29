import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure PowerSeries where
  center : ℂ
  coefficients : ℕ → ℂ

def eval (p : PowerSeries) (z : ℂ) : ℂ :=
  ∑' (n : ℕ), p.coefficients n * (z - p.center) ^ n

structure PowerSeriesObject where
  series : PowerSeries
  convergenceRadius : ℝ
  radiusPositive : convergenceRadius > 0
  boundaryBehavior : Prop

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
