import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.PerturbationStability

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure CrossoverAnalysisPackage {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R}
    {P : PerturbationStabilityPackage S} where
  crossoverScaleIdentified : Prop
  flowTrajectoryComputed : Prop
  asymptoticMatchVerified : Prop

structure CrossoverAnalysisEvidence {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R}
    {P : PerturbationStabilityPackage S} (C : CrossoverAnalysisPackage P) where
  crossoverScaleIdentifiedClosed : C.crossoverScaleIdentified
  flowTrajectoryComputedClosed : C.flowTrajectoryComputed
  asymptoticMatchVerifiedClosed : C.asymptoticMatchVerified

def CrossoverAnalysisClosed {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} {S : ScalingCriticalityPackage R}
    {P : PerturbationStabilityPackage S} (C : CrossoverAnalysisPackage P) : Prop :=
  C.crossoverScaleIdentified ∧ C.flowTrajectoryComputed ∧
  C.asymptoticMatchVerified

theorem crossover_analysis_closed_from_evidence
    {F : FixedPointFlowPackage} {R : RGFlowEquationPackage F}
    {S : ScalingCriticalityPackage R} {P : PerturbationStabilityPackage S}
    (C : CrossoverAnalysisPackage P) (E : CrossoverAnalysisEvidence C) :
    CrossoverAnalysisClosed C := by
  exact And.intro E.crossoverScaleIdentifiedClosed
    (And.intro E.flowTrajectoryComputedClosed
      E.asymptoticMatchVerifiedClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse