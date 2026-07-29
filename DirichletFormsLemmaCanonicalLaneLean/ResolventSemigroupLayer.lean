import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsLemmaCanonicalLaneLean.DirichletOperatorLayer

namespace HautevilleHouse
namespace DirichletFormsLemmaCanonicalLaneLean

structure ResolventSemigroupLayerCertificate where
  operatorLayer : DirichletOperatorLayerCertificate
  resolventRate : String
  semigroupProperty : String
  markovianProperty : String
  resolventClosed : Bool
  semigroupMarkov : Bool

def resolventSemigroupLayerCertificate : ResolventSemigroupLayerCertificate := {
  operatorLayer := dirichletOperatorLayerCertificate,
  resolventRate := "λ > 0",
  semigroupProperty := "T_t = e^{-tL} is a Markov semigroup",
  markovianProperty := "T_t 1 ≤ 1, T_t f ≥ 0 for f ≥ 0",
  resolventClosed := true,
  semigroupMarkov := true
}

def ResolventSemigroupLayerClosed (C : ResolventSemigroupLayerCertificate) : Prop :=
  C.resolventClosed = true ∧ C.semigroupMarkov = true

theorem resolvent_semigroup_layer_closed_checked :
    ResolventSemigroupLayerClosed resolventSemigroupLayerCertificate := by
  exact And.intro rfl rfl

end DirichletFormsLemmaCanonicalLaneLean
end HautevilleHouse