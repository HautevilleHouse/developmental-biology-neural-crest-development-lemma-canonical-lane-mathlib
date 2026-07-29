import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Crest Gene Regulatory Network Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  coreSignals : Prop
  transcriptionFactorCascade : Prop
  specificationGenesActivated : Prop
  migrationProgramInduced : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  coreSignalsClosed : G.coreSignals
  transcriptionFactorCascadeClosed : G.transcriptionFactorCascade
  specificationGenesActivatedClosed : G.specificationGenesActivated
  migrationProgramInducedClosed : G.migrationProgramInduced

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.coreSignals ∧ G.transcriptionFactorCascade ∧
  G.specificationGenesActivated ∧ G.migrationProgramInduced

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.coreSignalsClosed
    (And.intro E.transcriptionFactorCascadeClosed
      (And.intro E.specificationGenesActivatedClosed E.migrationProgramInducedClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
