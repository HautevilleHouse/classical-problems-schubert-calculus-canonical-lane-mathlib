import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertCyclePackage where
  grassmannian : Type u
  schubertCycle : Type v
  cohomologyRing : Type w
  schubertCellDecomposition : Prop
  schubertCellClosed : Prop
  schubertCellClosure : Prop
  poincareDuality : Prop

structure SchubertCycleEvidence (S : SchubertCyclePackage) where
  schubertCellDecompositionClosed : S.schubertCellDecomposition
  schubertCellClosedClosed : S.schubertCellClosed
  schubertCellClosureClosed : S.schubertCellClosure
  poincareDualityClosed : S.poincareDuality

def SchubertCycleClosed (S : SchubertCyclePackage) : Prop :=
  S.schubertCellDecomposition ∧ S.schubertCellClosed ∧ S.schubertCellClosure ∧ S.poincareDuality

theorem schubert_cycle_closed_from_evidence (S : SchubertCyclePackage) (E : SchubertCycleEvidence S) :
    SchubertCycleClosed S := by
  exact And.intro E.schubertCellDecompositionClosed
    (And.intro E.schubertCellClosedClosed
      (And.intro E.schubertCellClosureClosed E.poincareDualityClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse