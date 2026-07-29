import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure RGFlowApproximationEstimatesPackage where
  truncationErrorBound : Prop
  iterativeApproximationConvergent : Prop
  continuityInCutoff : Prop
  approximationUniform : Prop

structure RGFlowApproximationEstimatesEvidence (A : RGFlowApproximationEstimatesPackage) where
  truncationErrorBoundClosed : A.truncationErrorBound
  iterativeApproximationConvergentClosed : A.iterativeApproximationConvergent
  continuityInCutoffClosed : A.continuityInCutoff
  approximationUniformClosed : A.approximationUniform

def RGFlowApproximationEstimatesClosed (A : RGFlowApproximationEstimatesPackage) : Prop :=
  A.truncationErrorBound ∧ A.iterativeApproximationConvergent ∧ A.continuityInCutoff ∧ A.approximationUniform

theorem rg_flow_approximation_estimates_closed_from_evidence (A : RGFlowApproximationEstimatesPackage) (E : RGFlowApproximationEstimatesEvidence A) : RGFlowApproximationEstimatesClosed A :=
  And.intro E.truncationErrorBoundClosed (And.intro E.iterativeApproximationConvergentClosed (And.intro E.continuityInCutoffClosed E.approximationUniformClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse