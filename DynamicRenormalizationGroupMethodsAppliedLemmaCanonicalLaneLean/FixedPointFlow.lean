import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure FixedPointFlowPackage where
  flowMap : Type u
  fixedPointExistence : Prop
  linearizationStable : Prop
  scalingLimit : Prop

structure FixedPointFlowEvidence (F : FixedPointFlowPackage) where
  fixedPointExistenceClosed : F.fixedPointExistence
  linearizationStableClosed : F.linearizationStable
  scalingLimitClosed : F.scalingLimit

def FixedPointFlowClosed (F : FixedPointFlowPackage) : Prop :=
  F.fixedPointExistence ∧ F.linearizationStable ∧ F.scalingLimit

theorem fixed_point_flow_closed_from_evidence (F : FixedPointFlowPackage)
    (E : FixedPointFlowEvidence F) : FixedPointFlowClosed F := by
  exact And.intro E.fixedPointExistenceClosed
    (And.intro E.linearizationStableClosed E.scalingLimitClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse