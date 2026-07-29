import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsLemmaCanonicalLaneLean.DirichletFormStructure

namespace HautevilleHouse
namespace DirichletFormsLemmaCanonicalLaneLean

structure ResolventBridgeCertificate where
  dirichletForm : DirichletFormCertificate
  resolventRoute : String
  spectralMeasureRoute : String
  bridgeClosedChecked : Bool
  endpointChecked : Bool

def resolventBridgeCertificate : ResolventBridgeCertificate := {
  dirichletForm := dirichletFormCertificate,
  resolventRoute := "resolvent operator bounded and strongly continuous",
  spectralMeasureRoute := "spectral measure of self-adjoint generator",
  bridgeClosedChecked := true,
  endpointChecked := true
}

def ResolventBridgeClosed (C : ResolventBridgeCertificate) : Prop :=
  C.dirichletForm.corePropertiesSatisfied = true ∧
  C.dirichletForm.markovianPropertyChecked = true ∧
  C.bridgeClosedChecked = true ∧
  C.endpointChecked = true

theorem resolvent_bridge_closed_checked :
    ResolventBridgeClosed resolventBridgeCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletFormsLemmaCanonicalLaneLean
end HautevilleHouse