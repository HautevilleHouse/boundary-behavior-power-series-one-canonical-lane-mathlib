import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.PowerSeriesDefinition
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.BoundaryBehavior

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure AnalyticContinuationPackage (P : PowerSeriesObject) (B : BoundaryBehaviorPackage P (by
  have : P.domain = setOf (fun _ : ℂ => True) := rfl
  exact this)) where
  continuationDomain : Set ℂ
  analyticExtension : ℂ → ℂ
  uniquenessTheorem : Prop

structure AnalyticContinuationEvidence (P : PowerSeriesObject) (B : BoundaryBehaviorPackage P (by
  have : P.domain = setOf (fun _ : ℂ => True) := rfl
  exact this))
    (A : AnalyticContinuationPackage P B) where
  uniquenessTheoremClosed : A.uniquenessTheorem

def AnalyticContinuationClosed (P : PowerSeriesObject) (B : BoundaryBehaviorPackage P (by
  have : P.domain = setOf (fun _ : ℂ => True) := rfl
  exact this)) (A : AnalyticContinuationPackage P B) : Prop :=
  A.uniquenessTheorem

theorem analytic_continuation_closed_from_evidence (P : PowerSeriesObject) (B : BoundaryBehaviorPackage P (by
  have : P.domain = setOf (fun _ : ℂ => True) := rfl
  exact this))
    (A : AnalyticContinuationPackage P B) (E : AnalyticContinuationEvidence P B A) :
    AnalyticContinuationClosed P B A :=
  E.uniquenessTheoremClosed

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse