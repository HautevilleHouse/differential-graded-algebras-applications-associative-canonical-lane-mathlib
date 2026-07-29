import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.KoszulComplex

/-!
# Spectral Sequence Package

This package captures spectral sequences associated to DGA filtrations.
-/

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure SpectralSequencePackage {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} where
  filtrationDefined : Prop
  e1PageComputed : Prop
  convergenceToHomology : Prop

structure SpectralSequenceEvidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} (S : SpectralSequencePackage K) where
  filtrationDefinedClosed : S.filtrationDefined
  e1PageComputedClosed : S.e1PageComputed
  convergenceToHomologyClosed : S.convergenceToHomology

def SpectralSequenceClosed {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} (S : SpectralSequencePackage K) : Prop :=
  S.filtrationDefined ∧ S.e1PageComputed ∧ S.convergenceToHomology

theorem spectral_sequence_closed_from_evidence {P : ProductStructurePackage} {PP : ProductStructureEvidence P}
    {K : KoszulComplexPackage PP} (S : SpectralSequencePackage K) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.filtrationDefinedClosed
    (And.intro E.e1PageComputedClosed E.convergenceToHomologyClosed)

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse