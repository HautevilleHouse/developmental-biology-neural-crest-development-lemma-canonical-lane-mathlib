import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure CellFateSpecificationModel where
  progenitorCell : Type u
  lineageDecision : Prop
  fateDeterminants : Prop
  commitmentSignal : Prop
  lineageDecisionClosed : lineageDecision
  fateDeterminantsClosed : fateDeterminants
  commitmentSignalClosed : commitmentSignal

structure CellFateSpecificationEvidence (C : CellFateSpecificationModel) where
  lineageDecisionClosed : C.lineageDecisionClosed
  fateDeterminantsClosed : C.fateDeterminantsClosed
  commitmentSignalClosed : C.commitmentSignalClosed

def CellFateSpecificationClosed (C : CellFateSpecificationModel) : Prop :=
  C.lineageDecision ∧ C.fateDeterminants ∧ C.commitmentSignal

theorem cell_fate_specification_closed_from_evidence (C : CellFateSpecificationModel) (E : CellFateSpecificationEvidence C) :
    CellFateSpecificationClosed C := by
  exact And.intro E.lineageDecisionClosed (And.intro E.fateDeterminantsClosed E.commitmentSignalClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse