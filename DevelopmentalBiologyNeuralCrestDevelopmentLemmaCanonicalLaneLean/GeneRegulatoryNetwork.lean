import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkModel where
  geneSet : Type u
  regulatoryInteractions : Prop
  networkDynamics : Prop
  stabilityCondition : Prop
  regulatoryInteractionsClosed : regulatoryInteractions
  networkDynamicsClosed : networkDynamics
  stabilityConditionClosed : stabilityCondition

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkModel) where
  regulatoryInteractionsClosed : G.regulatoryInteractionsClosed
  networkDynamicsClosed : G.networkDynamicsClosed
  stabilityConditionClosed : G.stabilityConditionClosed

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkModel) : Prop :=
  G.regulatoryInteractions ∧ G.networkDynamics ∧ G.stabilityCondition

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkModel) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed (And.intro E.networkDynamicsClosed E.stabilityConditionClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse