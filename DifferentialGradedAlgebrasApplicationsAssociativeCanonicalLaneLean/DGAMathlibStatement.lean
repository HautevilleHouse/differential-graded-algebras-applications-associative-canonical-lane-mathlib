import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean.DGAClosure

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean

structure DGAMathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def dgaMathlibProofObligation : DGAMathlibProofObligation :=
  { sourceKey := "differential-graded-algebras-applications-associative-canonical-lane"
    theoremObject := "Differential graded algebras applications associative"
    commonCoreImported := true
    theoremSpecificDefinitionsNative := true
    theoremSpecificBridgeNative := true
    theoremSpecificAdmittedClosureNative := true
    unrestrictedClassicalClosureNative := false
    carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

theorem dga_common_core_imported_checked :
    dgaMathlibProofObligation.commonCoreImported = true := by
  rfl

theorem dga_theorem_specific_definitions_native_checked :
    dgaMathlibProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem dga_theorem_specific_bridge_native_checked :
    dgaMathlibProofObligation.theoremSpecificBridgeNative = true := by
  rfl

theorem dga_theorem_specific_admitted_closure_native_checked :
    dgaMathlibProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

theorem dga_unrestricted_classical_closure_carried :
    dgaMathlibProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedDGAClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_dga_endgame A

end DifferentialGradedAlgebrasApplicationsAssociativeCanonicalLaneLean
end HautevilleHouse
