import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure DegeneracyLociPackage where
  vectorBundle : Type u
  schubertCondition : Prop
  degeneracyLocus : Type v
  cohomologyClass : Prop
  thomPorteousFormula : Prop

structure DegeneracyLociEvidence (D : DegeneracyLociPackage) where
  schubertConditionClosed : D.schubertCondition
  cohomologyClassClosed : D.cohomologyClass
  thomPorteousFormulaClosed : D.thomPorteousFormula

def DegeneracyLociClosed (D : DegeneracyLociPackage) : Prop :=
  D.schubertCondition ∧ D.cohomologyClass ∧ D.thomPorteousFormula

theorem degeneracy_loci_closed_from_evidence (D : DegeneracyLociPackage)
    (E : DegeneracyLociEvidence D) : DegeneracyLociClosed D := by
  exact And.intro E.schubertConditionClosed (And.intro E.cohomologyClassClosed E.thomPorteousFormulaClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse