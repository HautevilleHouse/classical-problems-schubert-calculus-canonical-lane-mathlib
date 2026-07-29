import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure LittlewoodRichardsonPackage where
  schubertClassRing : Type u
  multiplicationDefined : Prop
  littlewoodRichardsonCoefficients : Prop
  pieriFormula : Prop
  giambelliFormula : Prop

structure LittlewoodRichardsonEvidence (LR : LittlewoodRichardsonPackage) where
  multiplicationDefinedClosed : LR.multiplicationDefined
  littlewoodRichardsonCoefficientsClosed : LR.littlewoodRichardsonCoefficients
  pieriFormulaClosed : LR.pieriFormula
  giambelliFormulaClosed : LR.giambelliFormula

def LittlewoodRichardsonClosed (LR : LittlewoodRichardsonPackage) : Prop :=
  LR.multiplicationDefined ∧ LR.littlewoodRichardsonCoefficients ∧ LR.pieriFormula ∧ LR.giambelliFormula

theorem littlewood_richardson_closed_from_evidence (LR : LittlewoodRichardsonPackage) (E : LittlewoodRichardsonEvidence LR) : LittlewoodRichardsonClosed LR := by
  exact And.intro E.multiplicationDefinedClosed (And.intro E.littlewoodRichardsonCoefficientsClosed (And.intro E.pieriFormulaClosed E.giambelliFormulaClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse