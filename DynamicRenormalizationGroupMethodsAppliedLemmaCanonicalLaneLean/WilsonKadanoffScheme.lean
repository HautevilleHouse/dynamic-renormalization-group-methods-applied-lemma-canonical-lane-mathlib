import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure WilsonKadanoffSchemePackage where
  blockSpinTransformation : Prop
  recursionRelation : Prop
  fixedPointIdentification : Prop
  criticalExponentExtraction : Prop

structure WilsonKadanoffSchemeEvidence (W : WilsonKadanoffSchemePackage) where
  blockSpinTransformationClosed : W.blockSpinTransformation
  recursionRelationClosed : W.recursionRelation
  fixedPointIdentificationClosed : W.fixedPointIdentification
  criticalExponentExtractionClosed : W.criticalExponentExtraction

def WilsonKadanoffSchemeClosed (W : WilsonKadanoffSchemePackage) : Prop :=
  W.blockSpinTransformation ∧ W.recursionRelation ∧ W.fixedPointIdentification ∧ W.criticalExponentExtraction

theorem wilson_kadanoff_scheme_closed_from_evidence (W : WilsonKadanoffSchemePackage) (E : WilsonKadanoffSchemeEvidence W) : WilsonKadanoffSchemeClosed W :=
  And.intro E.blockSpinTransformationClosed (And.intro E.recursionRelationClosed (And.intro E.fixedPointIdentificationClosed E.criticalExponentExtractionClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse