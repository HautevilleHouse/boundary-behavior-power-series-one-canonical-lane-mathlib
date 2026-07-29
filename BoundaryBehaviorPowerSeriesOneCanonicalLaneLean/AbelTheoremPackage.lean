import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure AbelTheoremPackage where
  powerSeriesConvergent : Prop
  radialLimitContinuity : Prop
  abelSummability : Prop
  tauberianCondition : Prop

structure AbelTheoremEvidence (A : AbelTheoremPackage) where
  powerSeriesConvergentClosed : A.powerSeriesConvergent
  radialLimitContinuityClosed : A.radialLimitContinuity
  abelSummabilityClosed : A.abelSummability
  tauberianConditionClosed : A.tauberianCondition

def AbelTheoremClosed (A : AbelTheoremPackage) : Prop :=
  A.powerSeriesConvergent ∧ A.radialLimitContinuity ∧ A.abelSummability ∧ A.tauberianCondition

theorem abel_theorem_closed_from_evidence (A : AbelTheoremPackage) (E : AbelTheoremEvidence A) :
    AbelTheoremClosed A := by
  exact And.intro E.powerSeriesConvergentClosed
    (And.intro E.radialLimitContinuityClosed
      (And.intro E.abelSummabilityClosed E.tauberianConditionClosed))

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse