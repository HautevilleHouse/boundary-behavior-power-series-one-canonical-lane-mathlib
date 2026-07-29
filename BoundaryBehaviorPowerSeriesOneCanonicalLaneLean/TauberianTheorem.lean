import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure TauberianTheoremPackage (A : AdmissibleClass) where
  tauberianCondition : Prop
  abelSummabilityImpliesConvergence : Prop
  boundaryLimitExists : Prop
  rateOfGrowthControlled : Prop

structure TauberianTheoremEvidence (A : AdmissibleClass) (T : TauberianTheoremPackage A) where
  tauberianConditionClosed : T.tauberianCondition
  abelSummabilityImpliesConvergenceClosed : T.abelSummabilityImpliesConvergence
  boundaryLimitExistsClosed : T.boundaryLimitExists
  rateOfGrowthControlledClosed : T.rateOfGrowthControlled

def TauberianTheoremClosed (A : AdmissibleClass) (T : TauberianTheoremPackage A) : Prop :=
  T.tauberianCondition ∧ T.abelSummabilityImpliesConvergence ∧ T.boundaryLimitExists ∧ T.rateOfGrowthControlled

theorem tauberian_theorem_closed_from_evidence (A : AdmissibleClass) (T : TauberianTheoremPackage A)
    (E : TauberianTheoremEvidence A T) : TauberianTheoremClosed A T := by
  exact And.intro E.tauberianConditionClosed
    (And.intro E.abelSummabilityImpliesConvergenceClosed
      (And.intro E.boundaryLimitExistsClosed E.rateOfGrowthControlledClosed))

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
