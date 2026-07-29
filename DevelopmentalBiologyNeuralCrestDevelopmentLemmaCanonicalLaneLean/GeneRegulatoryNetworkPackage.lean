import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : List Type
  targetGenes : List Type
  regulatoryInteractions : Prop
  networkTopologyCharacterized : Prop
  robustnessToPerturbations : Prop
  evolutionaryConservation : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  networkTopologyCharacterizedClosed : G.networkTopologyCharacterized
  robustnessToPerturbationsClosed : G.robustnessToPerturbations
  evolutionaryConservationClosed : G.evolutionaryConservation

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.networkTopologyCharacterized ∧
  G.robustnessToPerturbations ∧ G.evolutionaryConservation

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.networkTopologyCharacterizedClosed
      (And.intro E.robustnessToPerturbationsClosed E.evolutionaryConservationClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse