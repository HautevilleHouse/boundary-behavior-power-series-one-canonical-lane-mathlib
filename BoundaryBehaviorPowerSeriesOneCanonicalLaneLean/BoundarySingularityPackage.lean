import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure BoundarySingularityPackage where
  isolatedSingularity : Prop
  removableSingularity : Prop
  pole : Prop
  essentialSingularity : Prop
  boundaryClassification : Prop

structure BoundarySingularityEvidence (B : BoundarySingularityPackage) where
  isolatedSingularityClosed : B.isolatedSingularity
  removableSingularityClosed : B.removableSingularity
  poleClosed : B.pole
  essentialSingularityClosed : B.essentialSingularity
  boundaryClassificationClosed : B.boundaryClassification

def BoundarySingularityClosed (B : BoundarySingularityPackage) : Prop :=
  B.isolatedSingularity ∧ B.removableSingularity ∧ B.pole ∧ B.essentialSingularity ∧ B.boundaryClassification

theorem boundary_singularity_closed_from_evidence (B : BoundarySingularityPackage) (E : BoundarySingularityEvidence B) :
    BoundarySingularityClosed B := by
  exact And.intro E.isolatedSingularityClosed
    (And.intro E.removableSingularityClosed
      (And.intro E.poleClosed
        (And.intro E.essentialSingularityClosed E.boundaryClassificationClosed)))

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse