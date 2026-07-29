import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGradedAlgebrasApplicationsAssociative

structure DGASpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DGAAdmittedObject where
  space : DGASpace
  differentialGradedAlgebra : Prop
  differentialSquaredZero : Prop
  cohomologyAlgebra : Type
  cohomologyTopology : TopologicalSpace cohomologyAlgebra
  isomorphismWithCohomology : Prop
  conclusion : isomorphismWithCohomology

structure DGAEndgameState where
  object : DGAAdmittedObject

def DGAWitnessClosed (O : DGAAdmittedObject) : Prop :=
  O.isomorphismWithCohomology

end DifferentialGradedAlgebrasApplicationsAssociative
end HautevilleHouse
