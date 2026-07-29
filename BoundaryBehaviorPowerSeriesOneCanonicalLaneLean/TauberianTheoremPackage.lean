import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure TauberianTheoremPackage where
  abelSummable : Prop
  cesaroSummable : Prop
  tauberianCondition : Prop
  boundaryValueExists : Prop

structure TauberianTheoremEvidence (T : TauberianTheoremPackage) where
  abelSummableClosed : T.abelSummable
  cesaroSummableClosed : T.cesaroSummable
  tauberianConditionClosed : T.tauberianCondition
  boundaryValueExistsClosed : T.boundaryValueExists

def TauberianTheoremClosed (T : TauberianTheoremPackage) : Prop :=
  T.abelSummable ∧ T.cesaroSummable ∧ T.tauberianCondition ∧ T.boundaryValueExists

theorem tauberian_theorem_closed_from_evidence (T : TauberianTheoremPackage) (E : TauberianTheoremEvidence T) :
    TauberianTheoremClosed T := by
  exact And.intro E.abelSummableClosed
    (And.intro E.cesaroSummableClosed
      (And.intro E.tauberianConditionClosed E.boundaryValueExistsClosed))

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse