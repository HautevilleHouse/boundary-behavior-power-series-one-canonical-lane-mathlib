import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure RadialLimitPackage where
  powerSeries : Type u
  domain : Type v
  radialApproach : Type w
  limitExists : Prop
  limitValue : Prop
  abelMean : Prop

structure RadialLimitEvidence (R : RadialLimitPackage) where
  limitExistsClosed : R.limitExists
  limitValueClosed : R.limitValue
  abelMeanClosed : R.abelMean

def RadialLimitClosed (R : RadialLimitPackage) : Prop :=
  R.limitExists ∧ R.limitValue ∧ R.abelMean

theorem radial_limit_closed_from_evidence (R : RadialLimitPackage) (E : RadialLimitEvidence R) :
    RadialLimitClosed R := by
  exact And.intro E.limitExistsClosed (And.intro E.limitValueClosed E.abelMeanClosed)

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse