import HautevilleHouse.BoundaryBehaviorPowerSeriesOneCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

def ConstrainedBoundaryBehaviorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_behavior_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryBehaviorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse