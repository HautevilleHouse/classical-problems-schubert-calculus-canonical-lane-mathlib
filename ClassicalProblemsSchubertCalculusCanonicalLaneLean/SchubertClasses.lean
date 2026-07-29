import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertClass where
  cell : SchubertCell
  cohomologyClass : Type u
  representedByCycle : Prop
  productRule : Prop

structure SchubertClassEvidence (C : SchubertClass) where
  representedByCycleClosed : C.representedByCycle
  productRuleClosed : C.productRule

def SchubertClassClosed (C : SchubertClass) : Prop :=
  C.representedByCycle ∧ C.productRule

theorem schubert_class_closed_from_evidence (C : SchubertClass) (E : SchubertClassEvidence C) :
    SchubertClassClosed C := by
  exact And.intro E.representedByCycleClosed E.productRuleClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse