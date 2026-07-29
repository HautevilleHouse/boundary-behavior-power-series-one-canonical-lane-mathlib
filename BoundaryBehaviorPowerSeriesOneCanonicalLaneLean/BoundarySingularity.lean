import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure BoundarySingularityPackage (A : AdmissibleClass) where
  singularPointOnBoundary : Prop
  typeOfSingularity : Prop
  analyticContinuationPossible : Prop
  hadamardGapCondition : Prop

structure BoundarySingularityEvidence (A : AdmissibleClass) (S : BoundarySingularityPackage A) where
  singularPointOnBoundaryClosed : S.singularPointOnBoundary
  typeOfSingularityClosed : S.typeOfSingularity
  analyticContinuationPossibleClosed : S.analyticContinuationPossible
  hadamardGapConditionClosed : S.hadamardGapCondition

def BoundarySingularityClosed (A : AdmissibleClass) (S : BoundarySingularityPackage A) : Prop :=
  S.singularPointOnBoundary ∧ S.typeOfSingularity ∧ S.analyticContinuationPossible ∧ S.hadamardGapCondition

theorem boundary_singularity_closed_from_evidence (A : AdmissibleClass) (S : BoundarySingularityPackage A)
    (E : BoundarySingularityEvidence A S) : BoundarySingularityClosed A S := by
  exact And.intro E.singularPointOnBoundaryClosed
    (And.intro E.typeOfSingularityClosed
      (And.intro E.analyticContinuationPossibleClosed E.hadamardGapConditionClosed))

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
