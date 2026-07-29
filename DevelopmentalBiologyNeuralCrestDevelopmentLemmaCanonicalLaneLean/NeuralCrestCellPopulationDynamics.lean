import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Crest Cell Population Dynamics Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure CellPopulationPackage where
  delaminationRate : Prop
  migrationFidelity : Prop
  proliferationControl : Prop
  differentiationCommitment : Prop

structure CellPopulationEvidence (P : CellPopulationPackage) where
  delaminationRateClosed : P.delaminationRate
  migrationFidelityClosed : P.migrationFidelity
  proliferationControlClosed : P.proliferationControl
  differentiationCommitmentClosed : P.differentiationCommitment

def CellPopulationClosed (P : CellPopulationPackage) : Prop :=
  P.delaminationRate ∧ P.migrationFidelity ∧
  P.proliferationControl ∧ P.differentiationCommitment

theorem cell_population_closed_from_evidence
    (P : CellPopulationPackage) (E : CellPopulationEvidence P) :
    CellPopulationClosed P := by
  exact And.intro E.delaminationRateClosed
    (And.intro E.migrationFidelityClosed
      (And.intro E.proliferationControlClosed E.differentiationCommitmentClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
