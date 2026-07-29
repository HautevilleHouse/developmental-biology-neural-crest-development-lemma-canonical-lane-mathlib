import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure NeuralCrestMigrationModel where
  cellPopulation : Type u
  signalingGradient : Type v
  migrationPath : Prop
  gradientResponse : Prop
  cellPersistence : Prop
  migrationPathClosed : migrationPath
  gradientResponseClosed : gradientResponse
  cellPersistenceClosed : cellPersistence

structure NeuralCrestMigrationEvidence (M : NeuralCrestMigrationModel) where
  migrationPathClosed : M.migrationPathClosed
  gradientResponseClosed : M.gradientResponseClosed
  cellPersistenceClosed : M.cellPersistenceClosed

def NeuralCrestMigrationClosed (M : NeuralCrestMigrationModel) : Prop :=
  M.migrationPath ∧ M.gradientResponse ∧ M.cellPersistence

theorem neural_crest_migration_closed_from_evidence (M : NeuralCrestMigrationModel) (E : NeuralCrestMigrationEvidence M) :
    NeuralCrestMigrationClosed M := by
  exact And.intro E.migrationPathClosed (And.intro E.gradientResponseClosed E.cellPersistenceClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse