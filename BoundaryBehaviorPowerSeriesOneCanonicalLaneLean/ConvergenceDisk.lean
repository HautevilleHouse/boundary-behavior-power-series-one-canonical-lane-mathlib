import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.PowerSeriesDefinition

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure ConvergenceDiskPackage (P : PowerSeriesObject) where
  radiusComputed : ℝ
  cauchyHadamardSatisfied : radiusComputed = 1 / limsup (fun n => (|P.series.coefficients n|) ^ (1 / (n+1 : ℝ))) (n : ℕ)
  convergenceOnOpenDisk : Prop
  uniformConvergenceOnCompacts : Prop

structure ConvergenceDiskEvidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) where
  radiusPositiveAgain : P.convergenceRadius > 0
  cauchyHadamardDerived : C.cauchyHadamardSatisfied
  convergenceOnOpenDiskClosed : C.convergenceOnOpenDisk
  uniformConvergenceOnCompactsClosed : C.uniformConvergenceOnCompacts

def ConvergenceDiskClosed (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) : Prop :=
  C.convergenceOnOpenDisk ∧ C.uniformConvergenceOnCompacts

theorem convergence_disk_closed_from_evidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P)
    (E : ConvergenceDiskEvidence P C) : ConvergenceDiskClosed P C :=
  And.intro E.convergenceOnOpenDiskClosed E.uniformConvergenceOnCompactsClosed

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
