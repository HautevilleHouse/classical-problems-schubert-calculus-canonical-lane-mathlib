import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure PieriRule where
  partition : List Nat
  rowAddition : List Nat
  coefficientOne : Prop
  multiplicityCounted : Prop

structure PieriRuleEvidence (R : PieriRule) where
  coefficientOneClosed : R.coefficientOne
  multiplicityCountedClosed : R.multiplicityCounted

def PieriRuleClosed (R : PieriRule) : Prop :=
  R.coefficientOne ∧ R.multiplicityCounted

theorem pieri_rule_closed_from_evidence (R : PieriRule) (E : PieriRuleEvidence R) :
    PieriRuleClosed R := by
  exact And.intro E.coefficientOneClosed E.multiplicityCountedClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse