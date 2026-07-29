import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure EpithelialMesenchymalTransitionModel where
  cellType : Type u
  polarityLoss : Prop
  motilityGain : Prop
  transcriptionFactorSwitch : Prop
  polarityLossClosed : polarityLoss
  motilityGainClosed : motilityGain
  transcriptionFactorSwitchClosed : transcriptionFactorSwitch

structure EpithelialMesenchymalTransitionEvidence (E : EpithelialMesenchymalTransitionModel) where
  polarityLossClosed : E.polarityLossClosed
  motilityGainClosed : E.motilityGainClosed
  transcriptionFactorSwitchClosed : E.transcriptionFactorSwitchClosed

def EpithelialMesenchymalTransitionClosed (E : EpithelialMesenchymalTransitionModel) : Prop :=
  E.polarityLoss ∧ E.motilityGain ∧ E.transcriptionFactorSwitch

theorem epithelial_mesenchymal_transition_closed_from_evidence (E : EpithelialMesenchymalTransitionModel) (Ev : EpithelialMesenchymalTransitionEvidence E) :
    EpithelialMesenchymalTransitionClosed E := by
  exact And.intro Ev.polarityLossClosed (And.intro Ev.motilityGainClosed Ev.transcriptionFactorSwitchClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse