import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DGAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
