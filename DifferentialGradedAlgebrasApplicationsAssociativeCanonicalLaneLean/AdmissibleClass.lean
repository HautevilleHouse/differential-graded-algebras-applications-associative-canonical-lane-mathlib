import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure AdmissibleClass where
  object : DGAAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DGAWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
