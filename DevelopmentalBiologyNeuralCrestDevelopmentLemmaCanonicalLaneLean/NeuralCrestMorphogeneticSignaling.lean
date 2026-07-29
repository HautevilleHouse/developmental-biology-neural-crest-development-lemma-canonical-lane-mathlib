import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Crest Morphogenetic Signaling Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure MorphogeneticSignalingPackage where
  bmpWntFgfIntegration : Prop
  notchDeltaRegulation : Prop
  retinoicAcidGradient : Prop
  canonicalWntBetaCatenin : Prop

structure MorphogeneticSignalingEvidence (M : MorphogeneticSignalingPackage) where
  bmpWntFgfIntegrationClosed : M.bmpWntFgfIntegration
  notchDeltaRegulationClosed : M.notchDeltaRegulation
  retinoicAcidGradientClosed : M.retinoicAcidGradient
  canonicalWntBetaCateninClosed : M.canonicalWntBetaCatenin

def MorphogeneticSignalingClosed (M : MorphogeneticSignalingPackage) : Prop :=
  M.bmpWntFgfIntegration ∧ M.notchDeltaRegulation ∧
  M.retinoicAcidGradient ∧ M.canonicalWntBetaCatenin

theorem morphogenetic_signaling_closed_from_evidence
    (M : MorphogeneticSignalingPackage) (E : MorphogeneticSignalingEvidence M) :
    MorphogeneticSignalingClosed M := by
  exact And.intro E.bmpWntFgfIntegrationClosed
    (And.intro E.notchDeltaRegulationClosed
      (And.intro E.retinoicAcidGradientClosed E.canonicalWntBetaCateninClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
