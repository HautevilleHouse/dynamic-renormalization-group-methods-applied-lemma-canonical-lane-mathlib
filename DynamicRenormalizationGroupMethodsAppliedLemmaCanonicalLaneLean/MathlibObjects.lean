import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure DynamicRenormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicRenormalizationAdmittedObject where
  space : DynamicRenormalizationSpace
  rgFlowDefined : Prop
  fixedPointExists : Prop
  scalingDimensionsComputed : Prop
  conclusion : fixedPointExists ∧ scalingDimensionsComputed

structure DynamicRenormalizationEndgameState where
  object : DynamicRenormalizationAdmittedObject

def DynamicRenormalizationWitnessClosed (O : DynamicRenormalizationAdmittedObject) : Prop :=
  O.fixedPointExists ∧ O.scalingDimensionsComputed

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
