import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure BetaFunctionFlowPackage where
  betaFunction : Type
  couplingFlow : Prop
  fixedPointCondition : Prop
  flowDifferentiable : Prop
  flowExists : Prop

def BetaFunctionFlowClosed (B : BetaFunctionFlowPackage) : Prop :=
  B.couplingFlow ∧ B.fixedPointCondition ∧ B.flowDifferentiable ∧ B.flowExists

theorem beta_function_flow_closed (B : BetaFunctionFlowPackage)
    (h1 : B.couplingFlow) (h2 : B.fixedPointCondition) (h3 : B.flowDifferentiable) (h4 : B.flowExists) :
    BetaFunctionFlowClosed B :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse