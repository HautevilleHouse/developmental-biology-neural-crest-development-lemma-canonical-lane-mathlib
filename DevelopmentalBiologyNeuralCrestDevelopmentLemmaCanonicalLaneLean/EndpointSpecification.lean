import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure EndpointSpecificationPackage where
  targetTissue : Type u
  targetTopology : TopologicalSpace targetTissue
  neuralCrestDerivatives : Prop
  multipotencyMaintained : Prop
  terminalDifferentiation : Prop
  migratoryEndpointReached : Prop

structure EndpointSpecificationEvidence (E : EndpointSpecificationPackage) where
  neuralCrestDerivativesClosed : E.neuralCrestDerivatives
  multipotencyMaintainedClosed : E.multipotencyMaintained
  terminalDifferentiationClosed : E.terminalDifferentiation
  migratoryEndpointReachedClosed : E.migratoryEndpointReached

def EndpointSpecificationClosed (E : EndpointSpecificationPackage) : Prop :=
  E.neuralCrestDerivatives ∧ E.multipotencyMaintained ∧ E.terminalDifferentiation ∧ E.migratoryEndpointReached

theorem endpoint_specification_closed_from_evidence (E : EndpointSpecificationPackage) (Ev : EndpointSpecificationEvidence E) : EndpointSpecificationClosed E := by
  exact And.intro Ev.neuralCrestDerivativesClosed (And.intro Ev.multipotencyMaintainedClosed (And.intro Ev.terminalDifferentiationClosed Ev.migratoryEndpointReachedClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse