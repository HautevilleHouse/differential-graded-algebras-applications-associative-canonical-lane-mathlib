import DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAAssociativeAlgebra

/-!
# DGA Morphism Package
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAMorphism (A B : DGAAssociativeAlgebra) where
  map : ∀ n, A.degree n → B.degree n
  respects_diff : ∀ n x, B.diff n (map n x) = map (n+1) (A.diff n x)
  respects_mul : ∀ m n x y, map (m+n) (A.mul m n x y) = B.mul m n (map m x) (map n y)

def DGAMorphismClosed {A B : DGAAssociativeAlgebra} (φ : DGAMorphism A B) : Prop :=
  φ.respects_diff ∧ φ.respects_mul

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
