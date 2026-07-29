import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertCell where
  flagVariety : FlagVariety
  partition : List Nat
  cellDimension : Nat
  cellDecompositionComplete : Prop

structure SchubertCellEvidence (C : SchubertCell) where
  cellDecompositionCompleteClosed : C.cellDecompositionComplete

def SchubertCellClosed (C : SchubertCell) : Prop :=
  C.cellDecompositionComplete

theorem schubert_cell_closed_from_evidence (C : SchubertCell) (E : SchubertCellEvidence C) :
    SchubertCellClosed C := by
  exact E.cellDecompositionCompleteClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse