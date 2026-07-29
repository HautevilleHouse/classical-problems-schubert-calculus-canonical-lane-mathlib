import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure EnumerativeGeometryPackage where
  linearSubspaces : Type u
  intersectionProblem : Type v
  schubertCondition : Prop
  enumeration : Prop
  transversality : Prop
  answerPolynomial : Prop

structure EnumerativeGeometryEvidence (E : EnumerativeGeometryPackage) where
  schubertConditionClosed : E.schubertCondition
  enumerationClosed : E.enumeration
  transversalityClosed : E.transversality
  answerPolynomialClosed : E.answerPolynomial

def EnumerativeGeometryClosed (E : EnumerativeGeometryPackage) : Prop :=
  E.schubertCondition ∧ E.enumeration ∧ E.transversality ∧ E.answerPolynomial

theorem enumerative_geometry_closed_from_evidence (E : EnumerativeGeometryPackage) (Epkg : EnumerativeGeometryEvidence E) :
    EnumerativeGeometryClosed E := by
  exact And.intro Epkg.schubertConditionClosed
    (And.intro Epkg.enumerationClosed
      (And.intro Epkg.transversalityClosed Epkg.answerPolynomialClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse