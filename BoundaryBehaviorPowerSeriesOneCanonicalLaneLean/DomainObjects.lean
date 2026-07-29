import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOne

structure PowerSeriesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PowerSeriesAdmittedObject where
  space : PowerSeriesSpace
  radiusOne : Prop
  analyticOnDisk : Prop
  boundarySingularity : Prop
  continuationAcrossBoundary : Prop
  conclusion : boundarySingularity ∨ continuationAcrossBoundary

def PowerSeriesWitnessClosed (O : PowerSeriesAdmittedObject) : Prop :=
  O.boundarySingularity ∨ O.continuationAcrossBoundary

end BoundaryBehaviorPowerSeriesOne
end HautevilleHouse