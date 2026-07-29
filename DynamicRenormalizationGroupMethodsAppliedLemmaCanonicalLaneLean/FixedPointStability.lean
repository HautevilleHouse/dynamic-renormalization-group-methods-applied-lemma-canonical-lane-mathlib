import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.WilsonBetaFunction

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure FixedPointStabilityPackage {F : PhaseSpaceFlowPackage} {P : PhaseSpaceFlowEvidence F}
    {W : WilsonBetaFunctionPackage P} (E : WilsonBetaFunctionEvidence W) where
  relevantDirectionsIdentified : Prop
  irrelevantDirectionsControlled : Prop
  criticalSurfaceCharacterized : Prop
  universalityClaimSupported : Prop

structure FixedPointStabilityEvidence {F : PhaseSpaceFlowPackage} {P : PhaseSpaceFlowEvidence F}
    {W : WilsonBetaFunctionPackage P} {EW : WilsonBetaFunctionEvidence W}
    (S : FixedPointStabilityPackage EW) where
  relevantDirectionsIdentifiedClosed : S.relevantDirectionsIdentified
  irrelevantDirectionsControlledClosed : S.irrelevantDirectionsControlled
  criticalSurfaceCharacterizedClosed : S.criticalSurfaceCharacterized
  universalityClaimSupportedClosed : S.universalityClaimSupported

def FixedPointStabilityClosed {F : PhaseSpaceFlowPackage} {P : PhaseSpaceFlowEvidence F}
    {W : WilsonBetaFunctionPackage P} {EW : WilsonBetaFunctionEvidence W}
    (S : FixedPointStabilityPackage EW) : Prop :=
  S.relevantDirectionsIdentified ∧ S.irrelevantDirectionsControlled ∧
  S.criticalSurfaceCharacterized ∧ S.universalityClaimSupported

theorem fixed_point_stability_closed_from_evidence {F : PhaseSpaceFlowPackage}
    {P : PhaseSpaceFlowEvidence F} {W : WilsonBetaFunctionPackage P}
    {EW : WilsonBetaFunctionEvidence W} (S : FixedPointStabilityPackage EW)
    (E : FixedPointStabilityEvidence S) : FixedPointStabilityClosed S := by
  exact And.intro E.relevantDirectionsIdentifiedClosed
    (And.intro E.irrelevantDirectionsControlledClosed
      (And.intro E.criticalSurfaceCharacterizedClosed
        E.universalityClaimSupportedClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
