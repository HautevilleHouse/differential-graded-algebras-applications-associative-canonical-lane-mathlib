import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.ProductStructure

/-!
# Koszul Complex Package

This package models the Koszul complex associated to a DGA.
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure KoszulComplexPackage {P : ProductStructurePackage} (PP : ProductStructureEvidence P) where
  koszulDifferentialDefined : Prop
  koszulHomologyComputed : Prop
  koszulDGAStructure : Prop

structure KoszulComplexEvidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    (K : KoszulComplexPackage PP) where
  koszulDifferentialDefinedClosed : K.koszulDifferentialDefined
  koszulHomologyComputedClosed : K.koszulHomologyComputed
  koszulDGAStructureClosed : K.koszulDGAStructure

def KoszulComplexClosed {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    (K : KoszulComplexPackage PP) : Prop :=
  K.koszulDifferentialDefined ∧ K.koszulHomologyComputed ∧ K.koszulDGAStructure

theorem koszul_complex_closed_from_evidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    (K : KoszulComplexPackage PP) (E : KoszulComplexEvidence K) : KoszulComplexClosed K := by
  exact And.intro E.koszulDifferentialDefinedClosed
    (And.intro E.koszulHomologyComputedClosed E.koszulDGAStructureClosed)

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse