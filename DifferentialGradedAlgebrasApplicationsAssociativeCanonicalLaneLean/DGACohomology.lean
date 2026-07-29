import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAAssociativeAlgebra

/-!
# DGA Cohomology Package
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGACohomology (A : DGAAssociativeAlgebra) where
  cocycle : ∀ n, {x : A.degree n | A.diff n x = 0}
  coboundary : ∀ n, {x : A.degree n | ∃ y : A.degree (n-1), A.diff (n-1) y = x}
  cohomologyGroup : ℕ → Type u
  multiplicativeStructure : Prop

def DGACohomologyClosed (A : DGAAssociativeAlgebra) (H : DGACohomology A) : Prop :=
  H.multiplicativeStructure

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
