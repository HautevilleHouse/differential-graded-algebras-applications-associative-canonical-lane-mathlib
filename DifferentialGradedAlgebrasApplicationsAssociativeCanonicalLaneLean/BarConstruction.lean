import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.SpectralSequence

/-!
# Bar Construction Package

This package models the bar construction for DGA modules.
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure BarConstructionPackage {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} {S : SpectralSequencePackage K} where
  barComplexDefined : Prop
  barDifferentialDefined : Prop
  barHomologyMatchesTor : Prop

structure BarConstructionEvidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} {S : SpectralSequencePackage K} (B : BarConstructionPackage S) where
  barComplexDefinedClosed : B.barComplexDefined
  barDifferentialDefinedClosed : B.barDifferentialDefined
  barHomologyMatchesTorClosed : B.barHomologyMatchesTor

def BarConstructionClosed {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} {S : SpectralSequencePackage K} (B : BarConstructionPackage S) : Prop :=
  B.barComplexDefined ∧ B.barDifferentialDefined ∧ B.barHomologyMatchesTor

theorem bar_construction_closed_from_evidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} {S : SpectralSequencePackage K} (B : BarConstructionPackage S)
    (E : BarConstructionEvidence B) : BarConstructionClosed B := by
  exact And.intro E.barComplexDefinedClosed
    (And.intro E.barDifferentialDefinedClosed E.barHomologyMatchesTorClosed)

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse