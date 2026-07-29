import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure GiambelliFormulaPackage where
  schubertPolynomial : Type u
  schurDeterminant : Type v
  giambelliRule : Prop
  determinantFormula : Prop
  relationToSchurPolynomials : Prop

structure GiambelliFormulaEvidence (G : GiambelliFormulaPackage) where
  giambelliRuleClosed : G.giambelliRule
  determinantFormulaClosed : G.determinantFormula
  relationToSchurPolynomialsClosed : G.relationToSchurPolynomials

def GiambelliFormulaClosed (G : GiambelliFormulaPackage) : Prop :=
  G.giambelliRule ∧ G.determinantFormula ∧ G.relationToSchurPolynomials

theorem giambelli_formula_closed_from_evidence (G : GiambelliFormulaPackage) (E : GiambelliFormulaEvidence G) :
    GiambelliFormulaClosed G := by
  exact And.intro E.giambelliRuleClosed
    (And.intro E.determinantFormulaClosed E.relationToSchurPolynomialsClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse