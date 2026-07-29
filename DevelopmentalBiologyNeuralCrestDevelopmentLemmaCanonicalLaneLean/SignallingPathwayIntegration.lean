import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure SignallingPathwayIntegration where
  bmpSignalling : Type u
  wntSignalling : Type v
  fgfSignalling : Type w
  notchSignalling : Type x
  pathwayCrossTalk : Prop
  signalAmplitudeControl : Prop
  temporalDynamics : Prop

structure SignallingPathwayEvidence (S : SignallingPathwayIntegration) where
  pathwayCrossTalkClosed : S.pathwayCrossTalk
  signalAmplitudeControlClosed : S.signalAmplitudeControl
  temporalDynamicsClosed : S.temporalDynamics

def SignallingPathwayClosed (S : SignallingPathwayIntegration) : Prop :=
  S.pathwayCrossTalk ∧ S.signalAmplitudeControl ∧ S.temporalDynamics

theorem signalling_pathway_closed_from_evidence
    (S : SignallingPathwayIntegration) (E : SignallingPathwayEvidence S) :
    SignallingPathwayClosed S := by
  exact And.intro E.pathwayCrossTalkClosed
    (And.intro E.signalAmplitudeControlClosed E.temporalDynamicsClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse