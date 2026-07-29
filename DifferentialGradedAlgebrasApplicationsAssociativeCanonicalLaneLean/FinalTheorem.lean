import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.BridgeLemmas
import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

def ConstrainedDGAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dga_endgame (A : AdmissibleClass) :
    ConstrainedDGAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
