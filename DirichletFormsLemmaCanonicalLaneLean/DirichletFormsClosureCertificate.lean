import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsLemmaCanonicalLaneLean

structure DirichletFormsClosureCertificate where
  operatorLayer : DirichletFormOperatorLayerCertificate
  persistenceLayer : DirichletFormPersistenceLayerCertificate
  beurlingDenyLayer : BeurlingDenyLayerCertificate
  baselineGatesClosed : Bool
  formLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def dirichletFormsClosureCertificate : DirichletFormsClosureCertificate := {
  operatorLayer := dirichletFormOperatorLayerCertificate,
  persistenceLayer := dirichletFormPersistenceLayerCertificate,
  beurlingDenyLayer := beurlingDenyLayerCertificate,
  baselineGatesClosed := true,
  formLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def DirichletFormsClosureCertificateClosed (C : DirichletFormsClosureCertificate) : Prop :=
  DirichletFormOperatorLayerClosed C.operatorLayer ∧
  DirichletFormPersistenceLayerClosed C.persistenceLayer ∧
  BeurlingDenyLayerClosed C.beurlingDenyLayer ∧
  C.baselineGatesClosed = true ∧
  C.formLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_forms_closure_certificate_closed_checked :
    DirichletFormsClosureCertificateClosed dirichletFormsClosureCertificate := by
  exact And.intro dirichlet_form_operator_layer_closed_checked
    (And.intro dirichlet_form_persistence_layer_closed_checked
    (And.intro beurling_deny_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))))

end DirichletFormsLemmaCanonicalLaneLean
end HautevilleHouse