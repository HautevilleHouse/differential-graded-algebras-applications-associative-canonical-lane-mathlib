import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAObject

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DGAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse
