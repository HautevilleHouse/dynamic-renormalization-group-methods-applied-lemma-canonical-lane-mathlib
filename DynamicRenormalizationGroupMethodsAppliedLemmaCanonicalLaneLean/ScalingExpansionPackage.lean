import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.FixedPointRGFlow

/-!
# Scaling Expansion Package

This module captures the eigenvalue analysis of the linearized RG flow
around fixed points. The scaling dimensions determine relevant and
irrelevant operators.
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure ScalingExpansionPackage {F : FixedPointRGFlowPackage} (FP : FixedPointRGFlowPackage) where
  linearizedOperator : Type u
  eigenvalues : List ℝ
  eigenvectors : Type v
  scalingDimensions : Prop
  relevantIrrelevantClassification : Prop

structure ScalingExpansionEvidence {F : FixedPointRGFlowPackage}
    (S : ScalingExpansionPackage F) where
  scalingDimensionsClosed : S.scalingDimensions
  relevantIrrelevantClassificationClosed : S.relevantIrrelevantClassification

def ScalingExpansionClosed {F : FixedPointRGFlowPackage}
    (S : ScalingExpansionPackage F) : Prop :=
  S.scalingDimensions ∧ S.relevantIrrelevantClassification

theorem scaling_expansion_closed_from_evidence
    {F : FixedPointRGFlowPackage} (S : ScalingExpansionPackage F)
    (E : ScalingExpansionEvidence S) : ScalingExpansionClosed S := by
  exact And.intro E.scalingDimensionsClosed E.relevantIrrelevantClassificationClosed

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
