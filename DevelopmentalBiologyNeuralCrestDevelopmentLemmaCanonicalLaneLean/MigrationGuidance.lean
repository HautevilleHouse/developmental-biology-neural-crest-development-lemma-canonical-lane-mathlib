import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure MigrationGuidancePackage where
  chemoattractantGradients : Prop
  repulsiveSignals : Prop
  extracellularMatrixInteractions : Prop
  contactInhibition : Prop
  collectiveMigration : Prop

structure MigrationGuidanceEvidence (M : MigrationGuidancePackage) where
  chemoattractantGradientsClosed : M.chemoattractantGradients
  repulsiveSignalsClosed : M.repulsiveSignals
  extracellularMatrixInteractionsClosed : M.extracellularMatrixInteractions
  contactInhibitionClosed : M.contactInhibition
  collectiveMigrationClosed : M.collectiveMigration

def MigrationGuidanceClosed (M : MigrationGuidancePackage) : Prop :=
  M.chemoattractantGradients ∧ M.repulsiveSignals ∧ M.extracellularMatrixInteractions ∧ M.contactInhibition ∧ M.collectiveMigration

theorem migration_guidance_closed_from_evidence (M : MigrationGuidancePackage) (Ev : MigrationGuidanceEvidence M) : MigrationGuidanceClosed M := by
  exact And.intro Ev.chemoattractantGradientsClosed (And.intro Ev.repulsiveSignalsClosed (And.intro Ev.extracellularMatrixInteractionsClosed (And.intro Ev.contactInhibitionClosed Ev.collectiveMigrationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse