import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure WilsonFisherFixedPointPackage where
  fixedPointExists : Prop
  epsilonExpansion : Prop
  criticalExponentValues : Prop
  irRelevantDirections : Prop

def WilsonFisherFixedPointClosed (W : WilsonFisherFixedPointPackage) : Prop :=
  W.fixedPointExists ∧ W.epsilonExpansion ∧ W.criticalExponentValues ∧ W.irRelevantDirections

theorem wilson_fisher_fixed_point_closed (W : WilsonFisherFixedPointPackage)
    (h1 : W.fixedPointExists) (h2 : W.epsilonExpansion) (h3 : W.criticalExponentValues) (h4 : W.irRelevantDirections) :
    WilsonFisherFixedPointClosed W :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse