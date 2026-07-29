import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.PowerSeriesDefinition
import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.ConvergenceDisk

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

inductive SingularityType : Type where
  | removable
  | pole (order : ℕ)
  | essential

structure SingularityClassificationPackage (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) where
  boundaryPoints : Set ℂ
  singularityType : ℂ → SingularityType
  classificationConsistent : Prop

structure SingularityClassificationEvidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P)
    (S : SingularityClassificationPackage P C) where
  classificationConsistentClosed : S.classificationConsistent

def SingularityClassificationClosed (P : PowerSeriesObject) (C : ConvergenceDiskPackage P) (S : SingularityClassificationPackage P C) : Prop :=
  S.classificationConsistent

theorem singularity_classification_closed_from_evidence (P : PowerSeriesObject) (C : ConvergenceDiskPackage P)
    (S : SingularityClassificationPackage P C) (E : SingularityClassificationEvidence P C S) :
    SingularityClassificationClosed P C S :=
  E.classificationConsistentClosed

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse
