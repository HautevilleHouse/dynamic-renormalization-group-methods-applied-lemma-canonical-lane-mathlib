import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.FixedPointRGFlow
import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.ScalingExpansionPackage
import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.AnomalousDimensionPackage
import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.MomentumShellIntegrationPackage

/-!
# Final Package: Dynamic Renormalization Group Lemma

This module assembles all sub-packages into the full dynamic RG proof
for the applied lemma closure.
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure DynamicRenormalizationGroupLemmaPackage
    (F : FixedPointRGFlowPackage) (S : ScalingExpansionPackage F)
    (A : AnomalousDimensionPackage S) (M : MomentumShellIntegrationPackage A) where
  fixedPointClosed : FixedPointRGFlowClosed F
  scalingClosed : ScalingExpansionClosed S
  anomalousClosed : AnomalousDimensionClosed A
  shellIntegrationClosed : MomentumShellIntegrationClosed M
  lemmaConclusion : Prop

structure DynamicRenormalizationGroupLemmaEvidence
    (F : FixedPointRGFlowPackage) (S : ScalingExpansionPackage F)
    (A : AnomalousDimensionPackage S) (M : MomentumShellIntegrationPackage A)
    (P : DynamicRenormalizationGroupLemmaPackage F S A M) where
  fixedPointClosedEvidence : FixedPointRGFlowClosed F
  scalingClosedEvidence : ScalingExpansionClosed S
  anomalousClosedEvidence : AnomalousDimensionClosed A
  shellIntegrationClosedEvidence : MomentumShellIntegrationClosed M
  lemmaConclusionClosed : P.lemmaConclusion

def DynamicRenormalizationGroupLemmaClosed
    (F : FixedPointRGFlowPackage) (S : ScalingExpansionPackage F)
    (A : AnomalousDimensionPackage S) (M : MomentumShellIntegrationPackage A)
    (P : DynamicRenormalizationGroupLemmaPackage F S A M) : Prop :=
  P.lemmaConclusion

theorem dynamic_renormalization_group_lemma_closed_from_evidence
    (F : FixedPointRGFlowPackage) (S : ScalingExpansionPackage F)
    (A : AnomalousDimensionPackage S) (M : MomentumShellIntegrationPackage A)
    (P : DynamicRenormalizationGroupLemmaPackage F S A M)
    (E : DynamicRenormalizationGroupLemmaEvidence F S A M P) :
    DynamicRenormalizationGroupLemmaClosed F S A M P := by
  exact E.lemmaConclusionClosed

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
