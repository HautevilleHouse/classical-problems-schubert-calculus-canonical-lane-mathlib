import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure PierriGiambelliPackage where
  pierriFormula : Prop
  giambelliFormula : Prop
  determinantalFormula : Prop
  schubertClassProduct : Prop

structure PierriGiambelliEvidence (P : PierriGiambelliPackage) where
  pierriFormulaClosed : P.pierriFormula
  giambelliFormulaClosed : P.giambelliFormula
  determinantalFormulaClosed : P.determinantalFormula
  schubertClassProductClosed : P.schubertClassProduct

def PierriGiambelliClosed (P : PierriGiambelliPackage) : Prop :=
  P.pierriFormula ∧ P.giambelliFormula ∧ P.determinantalFormula ∧ P.schubertClassProduct

theorem pierri_giambelli_closed_from_evidence (P : PierriGiambelliPackage)
    (E : PierriGiambelliEvidence P) : PierriGiambelliClosed P := by
  exact And.intro E.pierriFormulaClosed
    (And.intro E.giambelliFormulaClosed
      (And.intro E.determinantalFormulaClosed E.schubertClassProductClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse