import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertPolynomialPackage where
  basis : Type u
  multiplication : Type v
  structureConstants : Prop
  positivity : Prop
  giambelliFormula : Prop

structure SchubertPolynomialEvidence (P : SchubertPolynomialPackage) where
  structureConstantsClosed : P.structureConstants
  positivityClosed : P.positivity
  giambelliFormulaClosed : P.giambelliFormula

def SchubertPolynomialClosed (P : SchubertPolynomialPackage) : Prop :=
  P.structureConstants ∧ P.positivity ∧ P.giambelliFormula

theorem schubert_polynomial_closed_from_evidence (P : SchubertPolynomialPackage)
    (E : SchubertPolynomialEvidence P) : SchubertPolynomialClosed P := by
  exact And.intro E.structureConstantsClosed (And.intro E.positivityClosed E.giambelliFormulaClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse