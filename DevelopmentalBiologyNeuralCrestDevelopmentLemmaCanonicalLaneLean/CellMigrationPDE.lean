import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemma

structure CellMigrationPDEPackage where
  chemotaxisModel : Prop
  contactInhibition : Prop
  ecmAdhesionDynamics : Prop
  leaderFollowerAsymmetry : Prop
  collectivityParameter : Prop
  pdeSystemHyperbolicParabolic : Prop

structure CellMigrationPDEEvidence (C : CellMigrationPDEPackage) where
  chemotaxisModelClosed : C.chemotaxisModel
  contactInhibitionClosed : C.contactInhibition
  ecmAdhesionDynamicsClosed : C.ecmAdhesionDynamics
  leaderFollowerAsymmetryClosed : C.leaderFollowerAsymmetry
  collectivityParameterClosed : C.collectivityParameter
  pdeSystemHyperbolicParabolicClosed : C.pdeSystemHyperbolicParabolic

def CellMigrationPDEClosed (C : CellMigrationPDEPackage) : Prop :=
  C.chemotaxisModel ∧ C.contactInhibition ∧ C.ecmAdhesionDynamics ∧
  C.leaderFollowerAsymmetry ∧ C.collectivityParameter ∧ C.pdeSystemHyperbolicParabolic

theorem cell_migration_pde_closed_from_evidence
    (C : CellMigrationPDEPackage) (E : CellMigrationPDEEvidence C) :
    CellMigrationPDEClosed C := by
  exact And.intro E.chemotaxisModelClosed
    (And.intro E.contactInhibitionClosed
      (And.intro E.ecmAdhesionDynamicsClosed
        (And.intro E.leaderFollowerAsymmetryClosed
          (And.intro E.collectivityParameterClosed E.pdeSystemHyperbolicParabolicClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentLemma
end HautevilleHouse