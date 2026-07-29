import Mathlib.AlgebraicTopology.DifferentialGradedAlgebra

/-!
# Differential Graded Algebra – Associative Algebra Package
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAAssociativeAlgebra where
  carrier : Type u
  degree : ℕ → Type v
  add : ∀ n, degree n → degree n → degree n
  zero : ∀ n, degree n
  mul : ∀ m n, degree m → degree n → degree (m + n)
  diff : ∀ n, degree n → degree (n+1)
  assoc : Prop
  diff_sq_zero : ∀ n, diff (n+1) ∘ diff n = 0
  algebraStructure : Prop

def DGAAssociativeAlgebraClosed (A : DGAAssociativeAlgebra) : Prop :=
  A.assoc ∧ A.diff_sq_zero ∧ A.algebraStructure

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
