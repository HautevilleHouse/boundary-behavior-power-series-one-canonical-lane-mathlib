import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure PowerSeriesAdmittedObject where
  coefficientSequence : Type u
  radius : ℝ
  radiusPositive : radius > 0
  boundaryLimitExists : Prop
  conclusion : boundaryLimitExists

structure AdmissibleClass where
  object : PowerSeriesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.boundaryLimitExists) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse