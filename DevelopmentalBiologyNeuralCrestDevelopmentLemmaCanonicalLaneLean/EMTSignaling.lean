import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentLemma

structure EMTSignalingPackage where
  wntSignalingActive : Prop
  bmpSignalingGradient : Prop
  fgfReceptorActivation : Prop
  notchDeltaCrossTalk : Prop
  tgfBetaSuperfamily : Prop
  signalIntegrationClock : Prop

structure EMTSignalingEvidence (E : EMTSignalingPackage) where
  wntSignalingActiveClosed : E.wntSignalingActive
  bmpSignalingGradientClosed : E.bmpSignalingGradient
  fgfReceptorActivationClosed : E.fgfReceptorActivation
  notchDeltaCrossTalkClosed : E.notchDeltaCrossTalk
  tgfBetaSuperfamilyClosed : E.tgfBetaSuperfamily
  signalIntegrationClockClosed : E.signalIntegrationClock

def EMTSignalingClosed (E : EMTSignalingPackage) : Prop :=
  E.wntSignalingActive ∧ E.bmpSignalingGradient ∧ E.fgfReceptorActivation ∧
  E.notchDeltaCrossTalk ∧ E.tgfBetaSuperfamily ∧ E.signalIntegrationClock

theorem emt_signaling_closed_from_evidence
    (E : EMTSignalingPackage) (Ev : EMTSignalingEvidence E) :
    EMTSignalingClosed E := by
  exact And.intro Ev.wntSignalingActiveClosed
    (And.intro Ev.bmpSignalingGradientClosed
      (And.intro Ev.fgfReceptorActivationClosed
        (And.intro Ev.notchDeltaCrossTalkClosed
          (And.intro Ev.tgfBetaSuperfamilyClosed Ev.signalIntegrationClockClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentLemma
end HautevilleHouse