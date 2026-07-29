import DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.CriticalExponents

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure RGFlowFixedPointPackage {F : RGFlowPackage} (C : CriticalExponentsPackage F) where
  fixedPointHamiltonian : Type u
  linearizedFlow : Type v
  relevantDirections : Prop
  irrelevantDirections : Prop
  marginalDirections : Prop

structure RGFlowFixedPointEvidence {F : RGFlowPackage} {C : CriticalExponentsPackage F} (R : RGFlowFixedPointPackage C) where
  relevantDirectionsClosed : R.relevantDirections
  irrelevantDirectionsClosed : R.irrelevantDirections
  marginalDirectionsClosed : R.marginalDirections

def RGFlowFixedPointClosed {F : RGFlowPackage} {C : CriticalExponentsPackage F} (R : RGFlowFixedPointPackage C) : Prop :=
  R.relevantDirections ∧ R.irrelevantDirections ∧ R.marginalDirections

theorem rgflow_fixed_point_closed_from_evidence {F : RGFlowPackage} {C : CriticalExponentsPackage F} (R : RGFlowFixedPointPackage C) (E : RGFlowFixedPointEvidence R) : RGFlowFixedPointClosed R := by
  exact And.intro E.relevantDirectionsClosed (And.intro E.irrelevantDirectionsClosed E.marginalDirectionsClosed)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
