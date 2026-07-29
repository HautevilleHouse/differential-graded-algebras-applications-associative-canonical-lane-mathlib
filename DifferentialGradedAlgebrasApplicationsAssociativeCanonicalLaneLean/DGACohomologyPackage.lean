import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGACohomologyPackage {D : DGAAlgebraPackage} where
  cohomologyGradedAlgebra : Type u
  inducedProductWellDefined : Prop
  longExactSequenceFromShortExact : Prop
  kunnethTheoremForTensorProduct : Prop
  inducedProductWellDefinedClosed : inducedProductWellDefined
  longExactSequenceFromShortExactClosed : longExactSequenceFromShortExact
  kunnethTheoremForTensorProductClosed : kunnethTheoremForTensorProduct

structure DGACohomologyEvidence {D : DGAAlgebraPackage} (H : DGACohomologyPackage D) where
  inducedProductWellDefinedClosed : H.inducedProductWellDefined
  longExactSequenceFromShortExactClosed : H.longExactSequenceFromShortExact
  kunnethTheoremForTensorProductClosed : H.kunnethTheoremForTensorProduct

def DGACohomologyClosed {D : DGAAlgebraPackage} (H : DGACohomologyPackage D) : Prop :=
  H.inducedProductWellDefined ∧ H.longExactSequenceFromShortExact ∧ H.kunnethTheoremForTensorProduct

theorem dga_cohomology_closed_from_evidence
    {D : DGAAlgebraPackage} (H : DGACohomologyPackage D) (E : DGACohomologyEvidence H) :
    DGACohomologyClosed H := by
  exact And.intro E.inducedProductWellDefinedClosed
    (And.intro E.longExactSequenceFromShortExactClosed E.kunnethTheoremForTensorProductClosed)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
