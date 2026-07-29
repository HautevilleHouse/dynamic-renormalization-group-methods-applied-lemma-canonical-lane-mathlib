import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.PhaseSpaceFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure WilsonBetaFunctionPackage {F : PhaseSpaceFlowPackage} (P : PhaseSpaceFlowEvidence F) where
  betaFunctionComputed : Prop
  perturbationExpansionValid : Prop
  criticalExponentsExtracted : Prop
  epsilonExpansionConvergent : Prop

structure WilsonBetaFunctionEvidence {F : PhaseSpaceFlowPackage} {P : PhaseSpaceFlowEvidence F}
    (W : WilsonBetaFunctionPackage P) where
  betaFunctionComputedClosed : W.betaFunctionComputed
  perturbationExpansionValidClosed : W.perturbationExpansionValid
  criticalExponentsExtractedClosed : W.criticalExponentsExtracted
  epsilonExpansionConvergentClosed : W.epsilonExpansionConvergent

def WilsonBetaFunctionClosed {F : PhaseSpaceFlowPackage} {P : PhaseSpaceFlowEvidence F}
    (W : WilsonBetaFunctionPackage P) : Prop :=
  W.betaFunctionComputed ∧ W.perturbationExpansionValid ∧
  W.criticalExponentsExtracted ∧ W.epsilonExpansionConvergent

theorem wilson_beta_function_closed_from_evidence {F : PhaseSpaceFlowPackage}
    {P : PhaseSpaceFlowEvidence F} (W : WilsonBetaFunctionPackage P)
    (E : WilsonBetaFunctionEvidence W) : WilsonBetaFunctionClosed W := by
  exact And.intro E.betaFunctionComputedClosed
    (And.intro E.perturbationExpansionValidClosed
      (And.intro E.criticalExponentsExtractedClosed
        E.epsilonExpansionConvergentClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
