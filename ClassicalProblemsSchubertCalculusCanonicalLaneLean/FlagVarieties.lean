import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure FlagVariety where
  vectorSpace : Type u
  dimension : Nat
  flagType : List Nat
  smoothProjectiveVariety : Prop

structure FlagVarietyEvidence (V : FlagVariety) where
  smoothProjectiveVarietyClosed : V.smoothProjectiveVariety

def FlagVarietyClosed (V : FlagVariety) : Prop :=
  V.smoothProjectiveVariety

theorem flag_variety_closed_from_evidence (V : FlagVariety) (E : FlagVarietyEvidence V) :
    FlagVarietyClosed V := by
  exact E.smoothProjectiveVarietyClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse