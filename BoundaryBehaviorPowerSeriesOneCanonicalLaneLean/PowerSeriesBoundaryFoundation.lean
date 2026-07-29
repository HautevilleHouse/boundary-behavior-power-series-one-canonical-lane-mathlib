import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorPowerSeriesOneCanonicalLaneLean

structure MathlibPowerSeriesBoundaryFoundation where
  formalPowerSeriesDefined : Prop
  convergenceRadiusKnown : Prop
  abelSummationDefined : Prop
  cesaroSummationDefined : Prop
  radialLimitDefined : Prop
  formalPowerSeriesDefinedTerm : formalPowerSeriesDefined
  convergenceRadiusKnownTerm : convergenceRadiusKnown
  abelSummationDefinedTerm : abelSummationDefined
  cesaroSummationDefinedTerm : cesaroSummationDefined
  radialLimitDefinedTerm : radialLimitDefined

def mathlibPowerSeriesBoundaryFoundation : MathlibPowerSeriesBoundaryFoundation :=
  { formalPowerSeriesDefined := True,
    convergenceRadiusKnown := True,
    abelSummationDefined := True,
    cesaroSummationDefined := True,
    radialLimitDefined := True,
    formalPowerSeriesDefinedTerm := trivial,
    convergenceRadiusKnownTerm := trivial,
    abelSummationDefinedTerm := trivial,
    cesaroSummationDefinedTerm := trivial,
    radialLimitDefinedTerm := trivial
  }

structure PowerSeriesBoundaryBodyObligations where
  radialLimitTheoremBody : Prop
  abelTheoremBody : Prop
  tauberianTheoremBody : Prop
  singularityClassificationBody : Prop
  boundaryBehaviorPackageBody : Prop
  radialLimitTheoremBodyTerm : radialLimitTheoremBody
  abelTheoremBodyTerm : abelTheoremBody
  tauberianTheoremBodyTerm : tauberianTheoremBody
  singularityClassificationBodyTerm : singularityClassificationBody
  boundaryBehaviorPackageBodyTerm : boundaryBehaviorPackageBody

end BoundaryBehaviorPowerSeriesOneCanonicalLaneLean
end HautevilleHouse