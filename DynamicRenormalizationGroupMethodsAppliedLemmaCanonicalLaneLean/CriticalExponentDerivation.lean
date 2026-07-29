import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure CriticalExponentDerivationPackage where
  exponentDefinitionsWellPosed : Prop
  derivationStepValid : Prop
  fixedPointLinearization : Prop
  scalingRelationDerived : Prop
  exponentValuesClosedForm : Prop

structure CriticalExponentDerivationEvidence (C : CriticalExponentDerivationPackage) where
  exponentDefinitionsWellPosedClosed : C.exponentDefinitionsWellPosed
  derivationStepValidClosed : C.derivationStepValid
  fixedPointLinearizationClosed : C.fixedPointLinearization
  scalingRelationDerivedClosed : C.scalingRelationDerived
  exponentValuesClosedFormClosed : C.exponentValuesClosedForm

def CriticalExponentDerivationClosed (C : CriticalExponentDerivationPackage) : Prop :=
  C.exponentDefinitionsWellPosed ∧ C.derivationStepValid ∧ C.fixedPointLinearization ∧ C.scalingRelationDerived ∧ C.exponentValuesClosedForm

theorem critical_exponent_derivation_closed_from_evidence (C : CriticalExponentDerivationPackage) (E : CriticalExponentDerivationEvidence C) : CriticalExponentDerivationClosed C :=
  And.intro E.exponentDefinitionsWellPosedClosed (And.intro E.derivationStepValidClosed (And.intro E.fixedPointLinearizationClosed (And.intro E.scalingRelationDerivedClosed E.exponentValuesClosedFormClosed)))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse