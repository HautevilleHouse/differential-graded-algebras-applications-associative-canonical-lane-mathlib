import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociative.KoszulComplex
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociative.HochschildHomology

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DerivedCategoryPackage (A : Type u) (P : DGAlgebrasPackage) (K : KoszulComplexPackage A P) (H : HochschildComplexPackage A P) where
  derivedCategory : Prop
  derivedEquivalence : Prop
  tStructure : Prop

structure DerivedCategoryEvidence (A : Type u) {P : DGAlgebrasPackage} {K : KoszulComplexPackage A P} {H : HochschildComplexPackage A P} (D : DerivedCategoryPackage A P K H) where
  derivedCategoryClosed : D.derivedCategory
  derivedEquivalenceClosed : D.derivedEquivalence
  tStructureClosed : D.tStructure

def DerivedCategoryClosed (A : Type u) {P : DGAlgebrasPackage} {K : KoszulComplexPackage A P} {H : HochschildComplexPackage A P} (D : DerivedCategoryPackage A P K H) : Prop :=
  D.derivedCategory ∧ D.derivedEquivalence ∧ D.tStructure

theorem derived_category_closed_from_evidence (A : Type u) {P : DGAlgebrasPackage} {K : KoszulComplexPackage A P} {H : HochschildComplexPackage A P} (D : DerivedCategoryPackage A P K H) (E : DerivedCategoryEvidence A D) : DerivedCategoryClosed A D := by
  exact And.intro E.derivedCategoryClosed (And.intro E.derivedEquivalenceClosed E.tStructureClosed)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse