import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure PhaseSpaceFlowPackage where
  scaleParameter : Type u
  fieldConfiguration : Type v
  renormalizationSemiGroup : Prop
  fixedPointManifold : Prop
  linearizationAroundFixedPoint : Prop
  scalingDimensionsComputed : Prop

structure PhaseSpaceFlowEvidence (F : PhaseSpaceFlowPackage) where
  renormalizationSemiGroupClosed : F.renormalizationSemiGroup
  fixedPointManifoldClosed : F.fixedPointManifold
  linearizationAroundFixedPointClosed : F.linearizationAroundFixedPoint
  scalingDimensionsComputedClosed : F.scalingDimensionsComputed

def PhaseSpaceFlowClosed (F : PhaseSpaceFlowPackage) : Prop :=
  F.renormalizationSemiGroup ∧ F.fixedPointManifold ∧
  F.linearizationAroundFixedPoint ∧ F.scalingDimensionsComputed

theorem phase_space_flow_closed_from_evidence (F : PhaseSpaceFlowPackage)
    (E : PhaseSpaceFlowEvidence F) : PhaseSpaceFlowClosed F := by
  exact And.intro E.renormalizationSemiGroupClosed
    (And.intro E.fixedPointManifoldClosed
      (And.intro E.linearizationAroundFixedPointClosed
        E.scalingDimensionsComputedClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
