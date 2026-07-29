import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure GRNPackage where
  transcriptionFactorCascade : Prop
  enhancerLogic : Prop
  feedbackLoops : Prop
  temporalDynamics : Prop
  robustnessToPerturbations : Prop

structure GRNEvidence (G : GRNPackage) where
  transcriptionFactorCascadeClosed : G.transcriptionFactorCascade
  enhancerLogicClosed : G.enhancerLogic
  feedbackLoopsClosed : G.feedbackLoops
  temporalDynamicsClosed : G.temporalDynamics
  robustnessToPerturbationsClosed : G.robustnessToPerturbations

def GRNClosed (G : GRNPackage) : Prop :=
  G.transcriptionFactorCascade ∧ G.enhancerLogic ∧ G.feedbackLoops ∧ G.temporalDynamics ∧ G.robustnessToPerturbations

theorem grn_closed_from_evidence (G : GRNPackage) (Ev : GRNEvidence G) : GRNClosed G := by
  exact And.intro Ev.transcriptionFactorCascadeClosed (And.intro Ev.enhancerLogicClosed (And.intro Ev.feedbackLoopsClosed (And.intro Ev.temporalDynamicsClosed Ev.robustnessToPerturbationsClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse