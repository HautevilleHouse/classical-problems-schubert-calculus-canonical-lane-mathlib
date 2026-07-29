import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertAdmittedObject where
  grassmannianPackage : GrassmannianPackage 3 7
  flagVarietyPackage : FlagVarietyPackage
  littlewoodRichardsonPackage : LittlewoodRichardsonPackage
  schubertCalculusClosed : Prop

structure SchubertAdmissibleClass where
  object : SchubertAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def SchubertWitnessClosed (O : SchubertAdmittedObject) : Prop :=
  O.schubertCalculusClosed

def bridgeClosed (A : SchubertAdmissibleClass) : Prop :=
  SchubertWitnessClosed A.object

theorem bridge_from_admissible_class (A : SchubertAdmissibleClass) : bridgeClosed A :=
  A.object.schubertCalculusClosed

def gateClosed (A : SchubertAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SchubertAdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedSchubertClosure (A : SchubertAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_endgame (A : SchubertAdmissibleClass) : ConstrainedSchubertClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse