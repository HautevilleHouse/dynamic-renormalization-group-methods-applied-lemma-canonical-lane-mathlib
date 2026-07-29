import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure DynamicRenormalizationGroupFlowPackage where
  scalingFlow : Type u
  flowOperator : Type v
  cutoffScale : Prop
  similarRGTransformation : Prop
  invariantManifold : Prop

structure DynamicRenormalizationGroupFlowEvidence (F : DynamicRenormalizationGroupFlowPackage) where
  cutoffScaleClosed : F.cutoffScale
  similarRGTransformationClosed : F.similarRGTransformation
  invariantManifoldClosed : F.invariantManifold

def DynamicRenormalizationGroupFlowClosed (F : DynamicRenormalizationGroupFlowPackage) : Prop :=
  F.cutoffScale ∧ F.similarRGTransformation ∧ F.invariantManifold

theorem dynamic_renormalization_group_flow_closed_from_evidence (F : DynamicRenormalizationGroupFlowPackage) (E : DynamicRenormalizationGroupFlowEvidence F) : DynamicRenormalizationGroupFlowClosed F :=
  And.intro E.cutoffScaleClosed (And.intro E.similarRGTransformationClosed E.invariantManifoldClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse