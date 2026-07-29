import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.AnomalousDimensionPackage

/-!
# Momentum Shell Integration Package

This module implements the Wilsonian momentum shell integration step.
Integrating out high-momentum degrees of freedom produces the effective
interactions at lower scales.
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure MomentumShellIntegrationPackage {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} {A : AnomalousDimensionPackage S}
    (Shell : AnomalousDimensionPackage S) where
  momentumCutoff : ℝ
  shellThickness : ℝ
  integrationRule : Prop
  effectiveActionAfterIntegration : Prop
  integrationConverges : Prop

structure MomentumShellIntegrationEvidence {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} {A : AnomalousDimensionPackage S}
    (M : MomentumShellIntegrationPackage A) where
  integrationRuleClosed : M.integrationRule
  effectiveActionAfterIntegrationClosed : M.effectiveActionAfterIntegration
  integrationConvergesClosed : M.integrationConverges

def MomentumShellIntegrationClosed {F : FixedPointRGFlowPackage}
    {S : ScalingExpansionPackage F} {A : AnomalousDimensionPackage S}
    (M : MomentumShellIntegrationPackage A) : Prop :=
  M.integrationRule ∧ M.effectiveActionAfterIntegration ∧ M.integrationConverges

theorem momentum_shell_integration_closed_from_evidence
    {F : FixedPointRGFlowPackage} {S : ScalingExpansionPackage F}
    {A : AnomalousDimensionPackage S} (M : MomentumShellIntegrationPackage A)
    (E : MomentumShellIntegrationEvidence M) : MomentumShellIntegrationClosed M := by
  exact And.intro E.integrationRuleClosed
    (And.intro E.effectiveActionAfterIntegrationClosed E.integrationConvergesClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
