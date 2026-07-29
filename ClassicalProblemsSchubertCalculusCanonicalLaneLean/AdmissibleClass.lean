import HautevilleHouse.ClassicalProblemsSchubertCalculusCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure AdmissibleClass where
  object : SchubertAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SchubertWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse
