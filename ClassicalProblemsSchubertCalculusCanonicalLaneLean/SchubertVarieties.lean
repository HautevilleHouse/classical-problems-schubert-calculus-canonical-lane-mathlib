import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertVarietyPackage where
  flagVariety : Type u
  topCell : Type v
  dimension : Nat
  schubertCell : Type w
  cellularDecomposition : Prop
  poincareDuality : Prop

structure SchubertVarietyEvidence (S : SchubertVarietyPackage) where
  cellularDecompositionClosed : S.cellularDecomposition
  poincareDualityClosed : S.poincareDuality

def SchubertVarietyClosed (S : SchubertVarietyPackage) : Prop :=
  S.cellularDecomposition ∧ S.poincareDuality

theorem schubert_variety_closed_from_evidence (S : SchubertVarietyPackage)
    (E : SchubertVarietyEvidence S) : SchubertVarietyClosed S := by
  exact And.intro E.cellularDecompositionClosed E.poincareDualityClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse