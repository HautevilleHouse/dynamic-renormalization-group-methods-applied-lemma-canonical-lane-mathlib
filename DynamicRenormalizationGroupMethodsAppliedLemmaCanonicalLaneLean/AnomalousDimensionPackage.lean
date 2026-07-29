import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.ScalingExpansionPackage

/-!
# Anomalous Dimension Package

This module accounts for critical exponent corrections beyond mean field.
The anomalous dimension η modifies the scaling of the two-point function.
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure AnomalousDimensionPackage {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} (Anom : ScalingExpansionPackage F) where
  correlationFunctionFixedPoint : Prop
  etaExponentDefined : ℝ
  etaExponentValue : Prop
  etaFromRGFixedPoint : Prop

structure AnomalousDimensionEvidence {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} (A : AnomalousDimensionPackage S) where
  etaExponentValueClosed : A.etaExponentValue
  etaFromRGFixedPointClosed : A.etaFromRGFixedPoint

def AnomalousDimensionClosed {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} (A : AnomalousDimensionPackage S) : Prop :=
  A.etaExponentValue ∧ A.etaFromRGFixedPoint

theorem anomalous_dimension_closed_from_evidence
    {F : FixedPointRGFlowPackage} {S : ScalingExpansionPackage F}
    (A : AnomalousDimensionPackage S) (E : AnomalousDimensionEvidence A) :
    AnomalousDimensionClosed A := by
  exact And.intro E.etaExponentValueClosed E.etaFromRGFixedPointClosed

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
