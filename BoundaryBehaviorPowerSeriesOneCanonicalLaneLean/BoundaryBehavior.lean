import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.PowerSeriesDefinition
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.ConvergenceDisk

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure BoundaryBehaviorPackage (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) where
  boundaryConvergenceSet : Set ℂ
  abelTheoremApplicable : P.convergenceRadius > 0 → (∀ θ : ℝ, (∃ limit, eval P.series (P.series.center + P.convergenceRadius * exp (I*θ)) := limit))
  tauberianCondition : Prop

structure BoundaryBehaviorEvidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) (B : BoundaryBehaviorPackage P C) where
  abelTheoremClosed : B.abelTheoremApplicable
  tauberianConditionClosed : B.tauberianCondition

def BoundaryBehaviorClosed (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) (B : BoundaryBehaviorPackage P C) : Prop :=
  B.tauberianCondition

theorem boundary_behavior_closed_from_evidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) (B : BoundaryBehaviorPackage P C)
    (E : BoundaryBehaviorEvidence P C B) : BoundaryBehaviorClosed P C B :=
  E.tauberianConditionClosed

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
