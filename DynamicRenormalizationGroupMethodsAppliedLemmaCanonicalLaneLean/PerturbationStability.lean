import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.ScalingCriticality

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure PerturbationStabilityPackage {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R} where
  irrelevantDirectionsControlled : Prop
  relevantDirectionsControlled : Prop
  stabilityMarginPositive : Prop

structure PerturbationStabilityEvidence {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R}
    (P : PerturbationStabilityPackage S) where
  irrelevantDirectionsControlledClosed : P.irrelevantDirectionsControlled
  relevantDirectionsControlledClosed : P.relevantDirectionsControlled
  stabilityMarginPositiveClosed : P.stabilityMarginPositive

def PerturbationStabilityClosed {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R}
    (P : PerturbationStabilityPackage S) : Prop :=
  P.irrelevantDirectionsControlled ∧ P.relevantDirectionsControlled ∧
  P.stabilityMarginPositive

theorem perturbation_stability_closed_from_evidence
    {F : FixedPointFlowPackage} {R : RGFlowEquationPackage F}
    {S : ScalingCriticalityPackage R} (P : PerturbationStabilityPackage S)
    (E : PerturbationStabilityEvidence P) : PerturbationStabilityClosed P := by
  exact And.intro E.irrelevantDirectionsControlledClosed
    (And.intro E.relevantDirectionsControlledClosed
      E.stabilityMarginPositiveClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse