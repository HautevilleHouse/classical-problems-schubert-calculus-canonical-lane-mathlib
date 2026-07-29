import HautevilleHouse.ClassicalProblemsSchubertCalculusCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchubertWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalProblemsSchubertCalculusCanonicalLaneLean
end HautevilleHouse
