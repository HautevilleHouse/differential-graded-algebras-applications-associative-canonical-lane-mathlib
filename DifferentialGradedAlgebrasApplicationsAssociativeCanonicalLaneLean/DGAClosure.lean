import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGABridgeLemmas
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAGateLemmas

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

def ConstrainedDGAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dga_endgame (A : AdmissibleClass) :
    ConstrainedDGAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse
