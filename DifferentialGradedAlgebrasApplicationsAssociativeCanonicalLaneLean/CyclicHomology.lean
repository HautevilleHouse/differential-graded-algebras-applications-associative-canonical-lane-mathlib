import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociative.HochschildHomology

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure CyclicHomologyPackage (A : Type u) (H : HochschildComplexPackage A P) where
  cyclicOperator : A → A
  cyclicHomologyGroups : Prop
  connesPeriodicity : Prop

structure CyclicHomologyEvidence (A : Type u) {P : DGAlgebrasPackage} {H : HochschildComplexPackage A P} (C : CyclicHomologyPackage A H) where
  cyclicHomologyGroupsClosed : C.cyclicHomologyGroups
  connesPeriodicityClosed : C.connesPeriodicity

def CyclicHomologyClosed (A : Type u) {P : DGAlgebrasPackage} {H : HochschildComplexPackage A P} (C : CyclicHomologyPackage A H) : Prop :=
  C.cyclicHomologyGroups ∧ C.connesPeriodicity

theorem cyclic_homology_closed_from_evidence (A : Type u) {P : DGAlgebrasPackage} {H : HochschildComplexPackage A P} (C : CyclicHomologyPackage A H) (E : CyclicHomologyEvidence A C) : CyclicHomologyClosed A C := by
  exact And.intro E.cyclicHomologyGroupsClosed E.connesPeriodicityClosed

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse