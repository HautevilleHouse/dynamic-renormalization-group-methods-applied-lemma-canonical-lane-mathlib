import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.RGFlowEquation

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure ScalingCriticalityPackage {F : FixedPointFlowPackage}
    (R : RGFlowEquationPackage F) where
  criticalExponentComputed : Prop
  scalingRelationHolds : Prop
  universalityClass : Prop

structure ScalingCriticalityEvidence {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} (S : ScalingCriticalityPackage R) where
  criticalExponentComputedClosed : S.criticalExponentComputed
  scalingRelationHoldsClosed : S.scalingRelationHolds
  universalityClassClosed : S.universalityClass

def ScalingCriticalityClosed {F : FixedPointFlowPackage}
    {R : RGFlowEquationPackage F} (S : ScalingCriticalityPackage R) : Prop :=
  S.criticalExponentComputed ∧ S.scalingRelationHolds ∧ S.universalityClass

theorem scaling_criticality_closed_from_evidence
    {F : FixedPointFlowPackage} {R : RGFlowEquationPackage F}
    (S : ScalingCriticalityPackage R) (E : ScalingCriticalityEvidence S) :
    ScalingCriticalityClosed S := by
  exact And.intro E.criticalExponentComputedClosed
    (And.intro E.scalingRelationHoldsClosed E.universalityClassClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse