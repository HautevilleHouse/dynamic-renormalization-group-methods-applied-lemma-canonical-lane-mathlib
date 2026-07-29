import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure BlockSpinRenormalizationKernel where
  blockScale : ℕ
  kernelFunction : Type
  coarseGraining : Prop
  fixedPointCondition : Prop
  blockScaleDefined : blockScale > 0
  kernelFunctionWellDefined : kernelFunction → Type

structure BlockSpinRenormalizationKernelEvidence (K : BlockSpinRenormalizationKernel) where
  coarseGrainingClosed : K.coarseGraining
  fixedPointConditionClosed : K.fixedPointCondition

def BlockSpinRenormalizationKernelClosed (K : BlockSpinRenormalizationKernel) : Prop :=
  K.coarseGraining ∧ K.fixedPointCondition

theorem block_spin_renormalization_kernel_closed_from_evidence
    (K : BlockSpinRenormalizationKernel)
    (E : BlockSpinRenormalizationKernelEvidence K) :
    BlockSpinRenormalizationKernelClosed K :=
  And.intro E.coarseGrainingClosed E.fixedPointConditionClosed

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse