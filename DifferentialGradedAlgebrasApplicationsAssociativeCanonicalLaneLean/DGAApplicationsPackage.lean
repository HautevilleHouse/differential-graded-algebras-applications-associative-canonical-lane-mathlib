import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAApplicationsPackage (H : DGACohomologyPackage D) where
  hodgeTheoryApplication : Prop
  deformationTheoryApplication : Prop
  rationalHomotopyApplication : Prop
  hodgeTheoryApplicationClosed : hodgeTheoryApplication
  deformationTheoryApplicationClosed : deformationTheoryApplication
  rationalHomotopyApplicationClosed : rationalHomotopyApplication

structure DGAApplicationsEvidence (A : DGAApplicationsPackage H) where
  hodgeTheoryApplicationClosed : A.hodgeTheoryApplication
  deformationTheoryApplicationClosed : A.deformationTheoryApplication
  rationalHomotopyApplicationClosed : A.rationalHomotopyApplication

def DGAApplicationsClosed (A : DGAApplicationsPackage H) : Prop :=
  A.hodgeTheoryApplication ∧ A.deformationTheoryApplication ∧ A.rationalHomotopyApplication

theorem dga_applications_closed_from_evidence
    (A : DGAApplicationsPackage H) (E : DGAApplicationsEvidence A) :
    DGAApplicationsClosed A := by
  exact And.intro E.hodgeTheoryApplicationClosed
    (And.intro E.deformationTheoryApplicationClosed E.rationalHomotopyApplicationClosed)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
