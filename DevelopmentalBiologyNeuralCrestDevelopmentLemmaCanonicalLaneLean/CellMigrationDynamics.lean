import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure CellMigrationDynamics where
  chemotacticSignals : Type u
  extracellularMatrixInteractions : Type v
  collectiveMigrationBehavior : Prop
  directionalityEstablished : Prop
  pathfindingErrorsAccounted : Prop

structure CellMigrationEvidence (M : CellMigrationDynamics) where
  collectiveMigrationBehaviorClosed : M.collectiveMigrationBehavior
  directionalityEstablishedClosed : M.directionalityEstablished
  pathfindingErrorsAccountedClosed : M.pathfindingErrorsAccounted

def CellMigrationClosed (M : CellMigrationDynamics) : Prop :=
  M.collectiveMigrationBehavior ∧ M.directionalityEstablished ∧ M.pathfindingErrorsAccounted

theorem cell_migration_closed_from_evidence
    (M : CellMigrationDynamics) (E : CellMigrationEvidence M) :
    CellMigrationClosed M := by
  exact And.intro E.collectiveMigrationBehaviorClosed
    (And.intro E.directionalityEstablishedClosed E.pathfindingErrorsAccountedClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse