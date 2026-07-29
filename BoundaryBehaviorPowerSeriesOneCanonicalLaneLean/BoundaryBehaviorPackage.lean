import BoundaryBehaviorPowerSeriesOne.PowerSeriesDiskAnalyticPackage

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOne

structure BoundaryBehaviorPackage {P : DiskAnalyticPackage} where
  radialLimitExists : Prop
  abelianMeanValue : Prop
  tauberianCondition : Prop
  naturalBoundary : Prop
  analyticContinuationAcrossArc : Prop

structure BoundaryBehaviorEvidence {P : DiskAnalyticPackage}
    (B : BoundaryBehaviorPackage P) where
  radialLimitExistsClosed : B.radialLimitExists
  abelianMeanValueClosed : B.abelianMeanValue
  tauberianConditionClosed : B.tauberianCondition
  naturalBoundaryClosed : B.naturalBoundary
  analyticContinuationAcrossArcClosed : B.analyticContinuationAcrossArc

def BoundaryBehaviorClosed {P : DiskAnalyticPackage}
    (B : BoundaryBehaviorPackage P) : Prop :=
  B.radialLimitExists ∧ B.abelianMeanValue ∧
  B.tauberianCondition ∧ B.naturalBoundary ∧
  B.analyticContinuationAcrossArc

theorem boundary_behavior_closed_from_evidence
    {P : DiskAnalyticPackage} (B : BoundaryBehaviorPackage P)
    (E : BoundaryBehaviorEvidence B) : BoundaryBehaviorClosed B := by
  exact And.intro E.radialLimitExistsClosed
    (And.intro E.abelianMeanValueClosed
      (And.intro E.tauberianConditionClosed
        (And.intro E.naturalBoundaryClosed E.analyticContinuationAcrossArcClosed)))

end BoundaryBehaviorPowerSeriesOne
end HautevilleHouse