import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

theorem dg_algebra_augmentation_supports_associated_graded (R : Type u) [CommRing R] (P : DGAlgebraPackage R) : P.augmentationSurjective := by
  exact P.augmentationSurjective

structure AssociatedGradedPackage (R : Type u) [CommRing R] (P : DGAlgebraPackage R) where
  associatedGraded : ℕ → Module R
  poincareBirkhoffWittStatement : Prop
  poincareBirkhoffWittProof : poincareBirkhoffWittStatement
  comparisonTheorem : Prop
  comparisonProof : comparisonTheorem

structure AssociatedGradedEvidence {R : Type u} [CommRing R] {P : DGAlgebraPackage R} (A : AssociatedGradedPackage R P) where
  poincareBirkhoffWittClosed : A.poincareBirkhoffWittStatement
  comparisonClosed : A.comparisonTheorem

def AssociatedGradedClosed {R : Type u} [CommRing R] {P : DGAlgebraPackage R} (A : AssociatedGradedPackage R P) : Prop :=
  A.poincareBirkhoffWittStatement ∧ A.comparisonTheorem

theorem associated_graded_closed_from_evidence {R : Type u} [CommRing R] {P : DGAlgebraPackage R} (A : AssociatedGradedPackage R P) (E : AssociatedGradedEvidence A) : AssociatedGradedClosed A := by
  exact And.intro E.poincareBirkhoffWittClosed E.comparisonClosed

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse