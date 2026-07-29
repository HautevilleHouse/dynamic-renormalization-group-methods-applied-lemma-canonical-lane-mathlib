import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean

structure ScalingLimitExistencePackage where
  scalingLimitExists : Prop
  universalityClass : Prop
  scalingRelation : Prop
  windowDecorrelation : Prop

structure ScalingLimitExistenceEvidence (S : ScalingLimitExistencePackage) where
  scalingLimitExistsClosed : S.scalingLimitExists
  universalityClassClosed : S.universalityClass
  scalingRelationClosed : S.scalingRelation
  windowDecorrelationClosed : S.windowDecorrelation

def ScalingLimitExistenceClosed (S : ScalingLimitExistencePackage) : Prop :=
  S.scalingLimitExists ∧ S.universalityClass ∧ S.scalingRelation ∧ S.windowDecorrelation

theorem scaling_limit_existence_closed_from_evidence (S : ScalingLimitExistencePackage) (E : ScalingLimitExistenceEvidence S) : ScalingLimitExistenceClosed S :=
  And.intro E.scalingLimitExistsClosed (And.intro E.universalityClassClosed (And.intro E.scalingRelationClosed E.windowDecorrelationClosed))

end DynamicRenormalizationGroupMethodsAppliedLemmaCanonicalLaneLean
end HautevilleHouse