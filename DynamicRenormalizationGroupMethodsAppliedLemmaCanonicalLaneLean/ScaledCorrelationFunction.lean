import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.RenormalizationGroupFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure ScaledCorrelationFunctionPackage {F : RGFlowPackage} (R : RGFlowFixedPointPackage F) where
  correlationFunction : Type u
  scalingDimension : Prop
  longDistanceLimit : Prop
  anomalousExponentExists : Prop

structure ScaledCorrelationFunctionEvidence {F : RGFlowPackage} {R : RGFlowFixedPointPackage F} (S : ScaledCorrelationFunctionPackage R) where
  scalingDimensionClosed : S.scalingDimension
  longDistanceLimitClosed : S.longDistanceLimit
  anomalousExponentExistsClosed : S.anomalousExponentExists

def ScaledCorrelationFunctionClosed {F : RGFlowPackage} {R : RGFlowFixedPointPackage F} (S : ScaledCorrelationFunctionPackage R) : Prop :=
  S.scalingDimension ∧ S.longDistanceLimit ∧ S.anomalousExponentExists

theorem scaled_correlation_function_closed_from_evidence {F : RGFlowPackage} {R : RGFlowFixedPointPackage F} (S : ScaledCorrelationFunctionPackage R) (E : ScaledCorrelationFunctionEvidence S) : ScaledCorrelationFunctionClosed S := by
  exact And.intro E.scalingDimensionClosed (And.intro E.longDistanceLimitClosed E.anomalousExponentExistsClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
