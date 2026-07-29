import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure LittlewoodRichardsonPackage where
  cohomologyRing : Type u
  schubertClasses : Type v
  productRule : Prop
  lrRule : Prop
  positivity : Prop
  saturation : Prop

structure LittlewoodRichardsonEvidence (L : LittlewoodRichardsonPackage) where
  productRuleClosed : L.productRule
  lrRuleClosed : L.lrRule
  positivityClosed : L.positivity
  saturationClosed : L.saturation

def LittlewoodRichardsonClosed (L : LittlewoodRichardsonPackage) : Prop :=
  L.productRule ∧ L.lrRule ∧ L.positivity ∧ L.saturation

theorem littlewood_richardson_closed_from_evidence (L : LittlewoodRichardsonPackage) (E : LittlewoodRichardsonEvidence L) :
    LittlewoodRichardsonClosed L := by
  exact And.intro E.productRuleClosed
    (And.intro E.lrRuleClosed
      (And.intro E.positivityClosed E.saturationClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse