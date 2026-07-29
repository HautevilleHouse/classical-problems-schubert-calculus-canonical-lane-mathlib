import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure LittlewoodRichardsonPackage where
  coefficient : Type u
  associativeLaw : Prop
  commutativity : Prop
  schubertProduct : Prop

structure LittlewoodRichardsonEvidence (L : LittlewoodRichardsonPackage) where
  associativeLawClosed : L.associativeLaw
  commutativityClosed : L.commutativity
  schubertProductClosed : L.schubertProduct

def LittlewoodRichardsonClosed (L : LittlewoodRichardsonPackage) : Prop :=
  L.associativeLaw ∧ L.commutativity ∧ L.schubertProduct

theorem littlewood_richardson_closed_from_evidence (L : LittlewoodRichardsonPackage)
    (E : LittlewoodRichardsonEvidence L) : LittlewoodRichardsonClosed L := by
  exact And.intro E.associativeLawClosed (And.intro E.commutativityClosed E.schubertProductClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse