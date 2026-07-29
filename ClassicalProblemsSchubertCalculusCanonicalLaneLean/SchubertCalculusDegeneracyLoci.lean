import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure DegeneracyLociPackage {G : GrassmannianPackage} where
  vectorBundle : Type u
  sections : Type v
  rankConditions : Prop
  schubertVarietyRealization : Prop
  cohomologyClassAssociated : Prop

structure DegeneracyLociEvidence {G : GrassmannianPackage} (D : DegeneracyLociPackage G) where
  rankConditionsClosed : D.rankConditions
  schubertVarietyRealizationClosed : D.schubertVarietyRealization
  cohomologyClassAssociatedClosed : D.cohomologyClassAssociated

def DegeneracyLociClosed {G : GrassmannianPackage} (D : DegeneracyLociPackage G) : Prop :=
  D.rankConditions ∧ D.schubertVarietyRealization ∧ D.cohomologyClassAssociated

theorem degeneracy_loci_closed_from_evidence {G : GrassmannianPackage} (D : DegeneracyLociPackage G) (E : DegeneracyLociEvidence D) : DegeneracyLociClosed D := by
  exact And.intro E.rankConditionsClosed (And.intro E.schubertVarietyRealizationClosed E.cohomologyClassAssociatedClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse