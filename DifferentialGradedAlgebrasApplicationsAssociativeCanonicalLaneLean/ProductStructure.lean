import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.Prelude

/-!
# Product Structure Package

This package captures the associative product structure of a differential graded algebra.
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure ProductStructurePackage where
  productAssociative : Prop
  productUnital : Prop
  productGraded : Prop
  productCompatibleWithDifferential : Prop

structure ProductStructureEvidence (P : ProductStructurePackage) where
  productAssociativeClosed : P.productAssociative
  productUnitalClosed : P.productUnital
  productGradedClosed : P.productGraded
  productCompatibleWithDifferentialClosed : P.productCompatibleWithDifferential

def ProductStructureClosed (P : ProductStructurePackage) : Prop :=
  P.productAssociative ∧ P.productUnital ∧ P.productGraded ∧ P.productCompatibleWithDifferential

theorem product_structure_closed_from_evidence (P : ProductStructurePackage) (E : ProductStructureEvidence P) :
    ProductStructureClosed P := by
  exact And.intro E.productAssociativeClosed
    (And.intro E.productUnitalClosed
      (And.intro E.productGradedClosed E.productCompatibleWithDifferentialClosed))

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse