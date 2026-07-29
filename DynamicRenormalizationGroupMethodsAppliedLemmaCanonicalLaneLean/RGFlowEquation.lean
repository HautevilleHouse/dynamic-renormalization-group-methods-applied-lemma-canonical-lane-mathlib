import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.FixedPointFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure RGFlowEquationPackage (F : FixedPointFlowPackage) where
  betaFunctionDefined : Prop
  cutoffRegularization : Prop
  flowEquationSatisfied : Prop

structure RGFlowEquationEvidence {F : FixedPointFlowPackage}
    (R : RGFlowEquationPackage F) where
  betaFunctionDefinedClosed : R.betaFunctionDefined
  cutoffRegularizationClosed : R.cutoffRegularization
  flowEquationSatisfiedClosed : R.flowEquationSatisfied

def RGFlowEquationClosed {F : FixedPointFlowPackage}
    (R : RGFlowEquationPackage F) : Prop :=
  R.betaFunctionDefined ∧ R.cutoffRegularization ∧ R.flowEquationSatisfied

theorem rg_flow_equation_closed_from_evidence
    {F : FixedPointFlowPackage} (R : RGFlowEquationPackage F)
    (E : RGFlowEquationEvidence R) : RGFlowEquationClosed R := by
  exact And.intro E.betaFunctionDefinedClosed
    (And.intro E.cutoffRegularizationClosed E.flowEquationSatisfiedClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse