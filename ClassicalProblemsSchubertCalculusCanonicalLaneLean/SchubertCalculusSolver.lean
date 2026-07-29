import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

structure SchubertCalculusSolver where
  flagVariety : FlagVariety
  schubertClasses : List SchubertClass
  pieriRules : List PieriRule
  giambelliFormulas : List GiambelliFormula
  intersectionNumbersComputable : Prop
  enumerativeGeometryClosed : Prop

structure SchubertCalculusSolverEvidence (S : SchubertCalculusSolver) where
  intersectionNumbersComputableClosed : S.intersectionNumbersComputable
  enumerativeGeometryClosed : S.enumerativeGeometryClosed

def SchubertCalculusSolverClosed (S : SchubertCalculusSolver) : Prop :=
  S.intersectionNumbersComputable ∧ S.enumerativeGeometryClosed

theorem schubert_calculus_solver_closed_from_evidence (S : SchubertCalculusSolver) (E : SchubertCalculusSolverEvidence S) :
    SchubertCalculusSolverClosed S := by
  exact And.intro E.intersectionNumbersComputableClosed E.enumerativeGeometryClosed

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse