import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DirichletFormsLemmaCanonicalLaneLean

structure DirichletFormData where
  energyForm : String
  domainSpace : String
  carreDuChamp : String
  markovProperty : Bool
  closedness : Bool

def primitiveDirichletFormData : DirichletFormData := {
  energyForm := "ℰ(u, v) = ∫ ∇u·∇v dμ",
  domainSpace := "L²(μ)",
  carreDuChamp := "Γ(u,v) = ∇u·∇v",
  markovProperty := true,
  closedness := true
}

structure DirichletFormCertificate where
  form : DirichletFormData
  operatorAssociated : Bool
  resolventClosed : Bool
  semigroupMarkov : Bool

end DirichletFormsLemmaCanonicalLaneLean
end HautevilleHouse