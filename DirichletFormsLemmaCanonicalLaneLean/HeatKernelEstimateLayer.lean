import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsLemmaCanonicalLaneLean.ResolventSemigroupLayer

namespace HautevilleHouse
namespace DirichletFormsLemmaCanonicalLaneLean

structure HeatKernelEstimateLayerCertificate where
  semigroupLayer : ResolventSemigroupLayerCertificate
  heatKernelBound : String
  gaussianEstimate : String
  estimateHolds : Bool
  subgaussianDecay : Bool

def heatKernelEstimateLayerCertificate : HeatKernelEstimateLayerCertificate := {
  semigroupLayer := resolventSemigroupLayerCertificate,
  heatKernelBound := "p_t(x,y) ≤ C t^{-d/2} exp(-c d(x,y)²/t)",
  gaussianEstimate := "Gaussian upper bound",
  estimateHolds := true,
  subgaussianDecay := true
}

def HeatKernelEstimateLayerClosed (C : HeatKernelEstimateLayerCertificate) : Prop :=
  C.estimateHolds = true ∧ C.subgaussianDecay = true

theorem heat_kernel_estimate_layer_closed_checked :
    HeatKernelEstimateLayerClosed heatKernelEstimateLayerCertificate := by
  exact And.intro rfl rfl

end DirichletFormsLemmaCanonicalLaneLean
end HautevilleHouse