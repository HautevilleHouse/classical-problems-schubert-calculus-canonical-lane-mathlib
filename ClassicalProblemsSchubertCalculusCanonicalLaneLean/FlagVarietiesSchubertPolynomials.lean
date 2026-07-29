import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure FlagVarietyPackage where
  flagManifold : Type u
  smoothStructure : Prop
  schubertPolynomialsDefined : Prop
  schubertPolynomialBasis : Prop
  dividedDifferenceOperators : Prop

structure FlagVarietyEvidence (F : FlagVarietyPackage) where
  smoothStructureClosed : F.smoothStructure
  schubertPolynomialsDefinedClosed : F.schubertPolynomialsDefined
  schubertPolynomialBasisClosed : F.schubertPolynomialBasis
  dividedDifferenceOperatorsClosed : F.dividedDifferenceOperators

def FlagVarietyClosed (F : FlagVarietyPackage) : Prop :=
  F.smoothStructure ∧ F.schubertPolynomialsDefined ∧ F.schubertPolynomialBasis ∧ F.dividedDifferenceOperators

theorem flag_variety_closed_from_evidence (F : FlagVarietyPackage) (E : FlagVarietyEvidence F) : FlagVarietyClosed F := by
  exact And.intro E.smoothStructureClosed (And.intro E.schubertPolynomialsDefinedClosed (And.intro E.schubertPolynomialBasisClosed E.dividedDifferenceOperatorsClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse