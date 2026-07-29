import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure MorphogenGradientModel where
  morphogen : Type u
  sourceRegion : Type v
  gradientFormation : Prop
  thresholdResponse : Prop
  gradientDecay : Prop
  gradientFormationClosed : gradientFormation
  thresholdResponseClosed : thresholdResponse
  gradientDecayClosed : gradientDecay

structure MorphogenGradientEvidence (M : MorphogenGradientModel) where
  gradientFormationClosed : M.gradientFormationClosed
  thresholdResponseClosed : M.thresholdResponseClosed
  gradientDecayClosed : M.gradientDecayClosed

def MorphogenGradientClosed (M : MorphogenGradientModel) : Prop :=
  M.gradientFormation ∧ M.thresholdResponse ∧ M.gradientDecay

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientModel) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.gradientFormationClosed (And.intro E.thresholdResponseClosed E.gradientDecayClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse