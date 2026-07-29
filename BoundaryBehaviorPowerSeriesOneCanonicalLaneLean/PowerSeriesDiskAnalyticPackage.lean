import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorPowerSeriesOne.DomainObjects

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOne

structure DiskAnalyticPackage where
  series : ℕ → ℂ
  radius : ℝ
  radiusEqualsOne : radius = 1
  convergenceOnOpenDisk : Prop
  analyticOnOpenDisk : Prop
  uniformConvergenceOnCompacts : Prop

structure DiskAnalyticEvidence (P : DiskAnalyticPackage) where
  convergenceOnOpenDiskClosed : P.convergenceOnOpenDisk
  analyticOnOpenDiskClosed : P.analyticOnOpenDisk
  uniformConvergenceOnCompactsClosed : P.uniformConvergenceOnCompacts

def DiskAnalyticClosed (P : DiskAnalyticPackage) : Prop :=
  P.convergenceOnOpenDisk ∧ P.analyticOnOpenDisk ∧ P.uniformConvergenceOnCompacts

theorem disk_analytic_closed_from_evidence
    (P : DiskAnalyticPackage) (E : DiskAnalyticEvidence P) :
    DiskAnalyticClosed P := by
  exact And.intro E.convergenceOnOpenDiskClosed
    (And.intro E.analyticOnOpenDiskClosed E.uniformConvergenceOnCompactsClosed)

end BoundaryBehaviorPowerSeriesOne
end HautevilleHouse