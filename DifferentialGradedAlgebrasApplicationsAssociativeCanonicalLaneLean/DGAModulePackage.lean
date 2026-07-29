import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGAModulePackage {D : DGAAlgebraPackage} where
  moduleAction : Type u
  actionCompatibleWithDifferential : Prop
  actionCompatibleWithProduct : Prop
  actionCompatibleWithDifferentialClosed : actionCompatibleWithDifferential
  actionCompatibleWithProductClosed : actionCompatibleWithProduct

structure DGAModuleEvidence {D : DGAAlgebraPackage} (M : DGAModulePackage D) where
  actionCompatibleWithDifferentialClosed : M.actionCompatibleWithDifferential
  actionCompatibleWithProductClosed : M.actionCompatibleWithProduct

def DGAModuleClosed {D : DGAAlgebraPackage} (M : DGAModulePackage D) : Prop :=
  M.actionCompatibleWithDifferential ∧ M.actionCompatibleWithProduct

theorem dga_module_closed_from_evidence
    {D : DGAAlgebraPackage} (M : DGAModulePackage D) (E : DGAModuleEvidence M) :
    DGAModuleClosed M := by
  exact And.intro E.actionCompatibleWithDifferentialClosed E.actionCompatibleWithProductClosed

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
