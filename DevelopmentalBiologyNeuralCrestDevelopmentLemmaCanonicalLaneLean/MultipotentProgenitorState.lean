import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure MultipotentProgenitorState where
  stemnessMarkers : List Type
  differentiationPotential : Prop
  selfRenewalCapacity : Prop
  epigeneticLandscape : Prop
  metabolicState : Prop
  cellCycleControl : Prop

structure MultipotentProgenitorEvidence (M : MultipotentProgenitorState) where
  differentiationPotentialClosed : M.differentiationPotential
  selfRenewalCapacityClosed : M.selfRenewalCapacity
  epigeneticLandscapeClosed : M.epigeneticLandscape
  metabolicStateClosed : M.metabolicState
  cellCycleControlClosed : M.cellCycleControl

def MultipotentProgenitorClosed (M : MultipotentProgenitorState) : Prop :=
  M.differentiationPotential ∧ M.selfRenewalCapacity ∧ M.epigeneticLandscape ∧
  M.metabolicState ∧ M.cellCycleControl

theorem multipotent_progenitor_closed_from_evidence
    (M : MultipotentProgenitorState) (E : MultipotentProgenitorEvidence M) :
    MultipotentProgenitorClosed M := by
  exact And.intro E.differentiationPotentialClosed
    (And.intro E.selfRenewalCapacityClosed
      (And.intro E.epigeneticLandscapeClosed
        (And.intro E.metabolicStateClosed E.cellCycleControlClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse