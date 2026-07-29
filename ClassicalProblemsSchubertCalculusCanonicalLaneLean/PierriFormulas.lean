import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure PieriFormulaPackage where
  cohomologyRing : Type u
  schubertClass : Type v
  pieriRule : Prop
  multiplicationDefined : Prop
  formulaCombinatorial : Prop
  structureConstants : Prop

structure PieriFormulaEvidence (P : PieriFormulaPackage) where
  pieriRuleClosed : P.pieriRule
  multiplicationDefinedClosed : P.multiplicationDefined
  formulaCombinatorialClosed : P.formulaCombinatorial
  structureConstantsClosed : P.structureConstants

def PieriFormulaClosed (P : PieriFormulaPackage) : Prop :=
  P.pieriRule ∧ P.multiplicationDefined ∧ P.formulaCombinatorial ∧ P.structureConstants

theorem pieri_formula_closed_from_evidence (P : PieriFormulaPackage) (E : PieriFormulaEvidence P) :
    PieriFormulaClosed P := by
  exact And.intro E.pieriRuleClosed
    (And.intro E.multiplicationDefinedClosed
      (And.intro E.formulaCombinatorialClosed E.structureConstantsClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse