import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure GrassmannianPackage where
  ambientSpace : Type u
  subspaceDimension : Nat
  grassmannianManifold : Type v
  topology : TopologicalSpace grassmannianManifold
  smoothStructure : Prop
  grassmannianIsCompact : Prop
  grassmannianIsConnected : Prop

structure GrassmannianEvidence (G : GrassmannianPackage) where
  smoothStructureClosed : G.smoothStructure
  grassmannianIsCompactClosed : G.grassmannianIsCompact
  grassmannianIsConnectedClosed : G.grassmannianIsConnected

def GrassmannianClosed (G : GrassmannianPackage) : Prop :=
  G.smoothStructure ∧ G.grassmannianIsCompact ∧ G.grassmannianIsConnected

theorem grassmannian_closed_from_evidence (G : GrassmannianPackage) (E : GrassmannianEvidence G) : GrassmannianClosed G := by
  exact And.intro E.smoothStructureClosed (And.intro E.grassmannianIsCompactClosed E.grassmannianIsConnectedClosed)

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse