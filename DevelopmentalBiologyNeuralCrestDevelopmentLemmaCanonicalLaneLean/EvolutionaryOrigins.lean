import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure EvolutionaryOriginsPackage where
  chordateAncestry : Prop
  geneDuplicationEvents : Prop
  cooptionOfSignaling : Prop
  speciesSpecificModifications : Prop
  adaptiveSignificance : Prop

structure EvolutionaryOriginsEvidence (E : EvolutionaryOriginsPackage) where
  chordateAncestryClosed : E.chordateAncestry
  geneDuplicationEventsClosed : E.geneDuplicationEvents
  cooptionOfSignalingClosed : E.cooptionOfSignaling
  speciesSpecificModificationsClosed : E.speciesSpecificModifications
  adaptiveSignificanceClosed : E.adaptiveSignificance

def EvolutionaryOriginsClosed (E : EvolutionaryOriginsPackage) : Prop :=
  E.chordateAncestry ∧ E.geneDuplicationEvents ∧ E.cooptionOfSignaling ∧ E.speciesSpecificModifications ∧ E.adaptiveSignificance

theorem evolutionary_origins_closed_from_evidence (E : EvolutionaryOriginsPackage) (Ev : EvolutionaryOriginsEvidence E) : EvolutionaryOriginsClosed E := by
  exact And.intro Ev.chordateAncestryClosed (And.intro Ev.geneDuplicationEventsClosed (And.intro Ev.cooptionOfSignalingClosed (And.intro Ev.speciesSpecificModificationsClosed Ev.adaptiveSignificanceClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse