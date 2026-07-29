import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean.FixedPointStability

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

def ConstrainedDynamicRenormalizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_renormalization_endgame (A : AdmissibleClass) :
    ConstrainedDynamicRenormalizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse
