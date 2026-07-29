import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemma

structure MultiscaleBifurcationPackage where
  geneExpressionLandscape : Prop
  epigeneticSwitching : Prop
  stochasticNoiseThreshold : Prop
  positiveFeedbackLoop : Prop
  bifurcationDelay : Prop
  multiscaleCouplingParameter : Prop

structure MultiscaleBifurcationEvidence (M : MultiscaleBifurcationPackage) where
  geneExpressionLandscapeClosed : M.geneExpressionLandscape
  epigeneticSwitchingClosed : M.epigeneticSwitching
  stochasticNoiseThresholdClosed : M.stochasticNoiseThreshold
  positiveFeedbackLoopClosed : M.positiveFeedbackLoop
  bifurcationDelayClosed : M.bifurcationDelay
  multiscaleCouplingParameterClosed : M.multiscaleCouplingParameter

def MultiscaleBifurcationClosed (M : MultiscaleBifurcationPackage) : Prop :=
  M.geneExpressionLandscape ∧ M.epigeneticSwitching ∧ M.stochasticNoiseThreshold ∧
  M.positiveFeedbackLoop ∧ M.bifurcationDelay ∧ M.multiscaleCouplingParameter

theorem multiscale_bifurcation_closed_from_evidence
    (M : MultiscaleBifurcationPackage) (E : MultiscaleBifurcationEvidence M) :
    MultiscaleBifurcationClosed M := by
  exact And.intro E.geneExpressionLandscapeClosed
    (And.intro E.epigeneticSwitchingClosed
      (And.intro E.stochasticNoiseThresholdClosed
        (And.intro E.positiveFeedbackLoopClosed
          (And.intro E.bifurcationDelayClosed E.multiscaleCouplingParameterClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentLemma
end HautevilleHouse