import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociative.DGAAlgebraStructure

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure HochschildComplexPackage (A : Type u) (P : DGAlgebrasPackage) where
  tensorProducts : A → A → A
  boundaryMaps : Nat → (A → A)
  homologyGroups : Prop
  hochschildCohomology : Prop

structure HochschildComplexEvidence (A : Type u) {P : DGAlgebrasPackage} (H : HochschildComplexPackage A P) where
  homologyGroupsClosed : H.homologyGroups
  hochschildCohomologyClosed : H.hochschildCohomology

def HochschildComplexClosed (A : Type u) {P : DGAlgebrasPackage} (H : HochschildComplexPackage A P) : Prop :=
  H.homologyGroups ∧ H.hochschildCohomology

theorem hochschild_complex_closed_from_evidence (A : Type u) {P : DGAlgebrasPackage} (H : HochschildComplexPackage A P) (E : HochschildComplexEvidence A H) : HochschildComplexClosed A H := by
  exact And.intro E.homologyGroupsClosed E.hochschildCohomologyClosed

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse