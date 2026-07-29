import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure FixedPointClassificationPackage where
  fixedPointExistence : Prop
  criticalExponents : Prop
  universalityClass : Prop
  scalingRelations : Prop

def FixedPointClassificationClosed (F : FixedPointClassificationPackage) : Prop :=
  F.fixedPointExistence ∧ F.criticalExponents ∧ F.universalityClass ∧ F.scalingRelations

theorem fixed_point_classification_closed (F : FixedPointClassificationPackage)
    (h1 : F.fixedPointExistence) (h2 : F.criticalExponents) (h3 : F.universalityClass) (h4 : F.scalingRelations) :
    FixedPointClassificationClosed F :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse