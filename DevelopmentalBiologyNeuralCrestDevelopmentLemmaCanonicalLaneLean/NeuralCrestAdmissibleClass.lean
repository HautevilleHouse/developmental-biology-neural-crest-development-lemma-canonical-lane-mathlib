import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean

structure NeuralCrestAdmittedObject where
  species : Type u
  developmentalStage : Type v
  migrationRouteCharacterized : Prop
  differentiationTrajectoryMapped : Prop
  conclusion : migrationRouteCharacterized ∧ differentiationTrajectoryMapped

structure NeuralCrestEndgameState where
  object : NeuralCrestAdmittedObject

def NeuralCrestWitnessClosed (O : NeuralCrestAdmittedObject) : Prop :=
  O.migrationRouteCharacterized ∧ O.differentiationTrajectoryMapped

end DevelopmentalBiologyNeuralCrestDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse