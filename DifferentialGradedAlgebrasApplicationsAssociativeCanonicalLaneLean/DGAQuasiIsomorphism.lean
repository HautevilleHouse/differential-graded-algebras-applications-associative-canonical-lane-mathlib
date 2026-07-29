import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAMorphism
import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGACohomology

/-!
# DGA Quasi-Isomorphism Package
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAQuasiIsomorphism {A B : DGAAssociativeAlgebra} (φ : DGAMorphism A B) where
  cohomologyIsomorphism : Prop
  inducesIsoOnCohomology : cohomologyIsomorphism

def DGAQuasiIsomorphismClosed {A B : DGAAssociativeAlgebra} {φ : DGAMorphism A B} (q : DGAQuasiIsomorphism φ) : Prop :=
  q.cohomologyIsomorphism

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
