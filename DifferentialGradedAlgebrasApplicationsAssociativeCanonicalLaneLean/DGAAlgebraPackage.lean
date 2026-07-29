import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAAlgebraPackage where
  underlyingGradedAlgebra : Type u
  differential : Type v
  differentialSquaredZero : Prop
  gradedMultiplicativity : Prop
  homologicalDegreeCompatibility : Prop
  differentialSquaredZeroClosed : differentialSquaredZero
  gradedMultiplicativityClosed : gradedMultiplicativity
  homologicalDegreeCompatibilityClosed : homologicalDegreeCompatibility

structure DGAAlgebraEvidence (D : DGAAlgebraPackage) where
  differentialSquaredZeroClosed : D.differentialSquaredZero
  gradedMultiplicativityClosed : D.gradedMultiplicativity
  homologicalDegreeCompatibilityClosed : D.homologicalDegreeCompatibility

def DGAAlgebraClosed (D : DGAAlgebraPackage) : Prop :=
  D.differentialSquaredZero ∧ D.gradedMultiplicativity ∧ D.homologicalDegreeCompatibility

theorem dga_algebra_closed_from_evidence (D : DGAAlgebraPackage) (E : DGAAlgebraEvidence D) :
    DGAAlgebraClosed D := by
  exact And.intro E.differentialSquaredZeroClosed
    (And.intro E.gradedMultiplicativityClosed E.homologicalDegreeCompatibilityClosed)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
