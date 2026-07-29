import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.WilsonianEffectiveAction

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure RGFlowKernelPackage {W : WilsonianEffectiveActionPackage} (C : ScaleCutoffPackage W) where
  kernelFunction : Type u
  momentumConservation : Prop
  localityInRealSpace : Prop
  regularityProperties : Prop

structure RGFlowKernelEvidence {W : WilsonianEffectiveActionPackage} {C : ScaleCutoffPackage W} (K : RGFlowKernelPackage C) where
  momentumConservationClosed : K.momentumConservation
  localityInRealSpaceClosed : K.localityInRealSpace
  regularityPropertiesClosed : K.regularityProperties

def RGFlowKernelClosed {W : WilsonianEffectiveActionPackage} {C : ScaleCutoffPackage W} (K : RGFlowKernelPackage C) : Prop :=
  K.momentumConservation ∧ K.localityInRealSpace ∧ K.regularityProperties

theorem rgflow_kernel_closed_from_evidence {W : WilsonianEffectiveActionPackage} {C : ScaleCutoffPackage W} (K : RGFlowKernelPackage C) (E : RGFlowKernelEvidence K) : RGFlowKernelClosed K := by
  exact And.intro E.momentumConservationClosed (And.intro E.localityInRealSpaceClosed E.regularityPropertiesClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
