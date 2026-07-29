import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure GrassmannianPackage (k n : ℕ) where
  planeDimension : ℕ
  ambientDimension : ℕ
  grassmannianManifold : Type u
  smoothStructure : Prop
  schubertVarietyDefined : Prop
  schubertCellDecomposition : Prop
  cohomologyRingComputed : Prop
  planeDimensionEq : planeDimension = k
  ambientDimensionEq : ambientDimension = n

structure GrassmannianEvidence {k n : ℕ} (G : GrassmannianPackage k n) where
  smoothStructureClosed : G.smoothStructure
  schubertVarietyDefinedClosed : G.schubertVarietyDefined
  schubertCellDecompositionClosed : G.schubertCellDecomposition
  cohomologyRingComputedClosed : G.cohomologyRingComputed

def GrassmannianClosed {k n : ℕ} (G : GrassmannianPackage k n) : Prop :=
  G.smoothStructure ∧ G.schubertVarietyDefined ∧ G.schubertCellDecomposition ∧ G.cohomologyRingComputed

theorem grassmannian_closed_from_evidence {k n : ℕ} (G : GrassmannianPackage k n) (E : GrassmannianEvidence G) : GrassmannianClosed G := by
  exact And.intro E.smoothStructureClosed (And.intro E.schubertVarietyDefinedClosed (And.intro E.schubertCellDecompositionClosed E.cohomologyRingComputedClosed))

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse