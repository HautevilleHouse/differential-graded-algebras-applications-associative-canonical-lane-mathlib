import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure DGASpace where
  carrier : Type
  grading : ℕ → Set carrier
  differential : (n : ℕ) → (grading n → grading (n+1))
  differentialSquared : (n : ℕ) → (differential (n+1) ∘ differential n) = 0

structure DGAAdmittedObject where
  space : DGASpace
  associativeMultiplication : Prop
  productRespectsGrading : Prop
  leibnizRule : Prop
  conclusion : associativeMultiplication ∧ productRespectsGrading ∧ leibnizRule

def DGAWitnessClosed (O : DGAAdmittedObject) : Prop :=
  O.conclusion

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse
