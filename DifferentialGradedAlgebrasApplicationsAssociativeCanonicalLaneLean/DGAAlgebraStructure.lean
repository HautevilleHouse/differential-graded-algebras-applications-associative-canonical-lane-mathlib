import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure DGAlgebra (R : Type u) [CommRing R] where
  carrier : Type v
  [instAddCommGroup : AddCommGroup carrier]
  [instModule : Module R carrier]
  differential : carrier → carrier
  differentialSquareZero : differential ∘ differential = 0
  multiplication : carrier → carrier → carrier
  [instRing : Ring carrier]
  gradedComponents : ℕ → Submodule R carrier
  gradedDirectSum : DirectSum ℕ (fun n : ℕ => gradedComponents n) ≃ₗ[R] carrier
  diffRespectsGrading : ∀ n, differential '' (gradedComponents n : Set carrier) ⊆ gradedComponents (n+1)
  productRespectsGrading : ∀ n m, (gradedComponents n) * (gradedComponents m) ≤ gradedComponents (n+m)
  derivationLaw : ∀ x y, differential (multiplication x y) = multiplication (differential x) y + multiplication x (differential y)

structure DGAlgebraPackage (R : Type u) [CommRing R] where
  dgAlgebra : DGAlgebra R
  augmentation : DGAlgebra R →ₐ[R] R
  augmentationSurjective : Function.Surjective augmentation
  homologyComputed : ℕ → Module R

structure DGAlgebraEvidence {R : Type u} [CommRing R] (P : DGAlgebraPackage R) where
  augmentationSurjectiveClosed : P.augmentationSurjective
  homologyComputedClosed : ∀ n, Nonempty (P.homologyComputed n)

def DGAlgebraClosed {R : Type u} [CommRing R] (P : DGAlgebraPackage R) : Prop :=
  P.augmentationSurjective ∧ ∀ n, Nonempty (P.homologyComputed n)

theorem dgAlgebra_closed_from_evidence {R : Type u} [CommRing R] (P : DGAlgebraPackage R) (E : DGAlgebraEvidence P) : DGAlgebraClosed P := by
  exact And.intro E.augmentationSurjectiveClosed E.homologyComputedClosed

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse