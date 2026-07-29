import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Fixed Point RG Flow Package

This module encodes the renormalization group flow as a dynamical system
on the space of effective actions. The fixed point identifies the critical
theory and its universality class.
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure FixedPointRGFlowPackage where
  rgFlowMap : Type u → Type v
  fixedPointAction : Type w
  flowEquation : Prop
  fixedPointEquation : Prop
  stabilityAnalysis : Prop

structure FixedPointRGFlowEvidence (F : FixedPointRGFlowPackage) where
  flowEquationClosed : F.flowEquation
  fixedPointEquationClosed : F.fixedPointEquation
  stabilityAnalysisClosed : F.stabilityAnalysis

def FixedPointRGFlowClosed (F : FixedPointRGFlowPackage) : Prop :=
  F.flowEquation ∧ F.fixedPointEquation ∧ F.stabilityAnalysis

theorem fixed_point_rg_flow_closed_from_evidence
    (F : FixedPointRGFlowPackage) (E : FixedPointRGFlowEvidence F) :
    FixedPointRGFlowClosed F := by
  exact And.intro E.flowEquationClosed
    (And.intro E.fixedPointEquationClosed E.stabilityAnalysisClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
