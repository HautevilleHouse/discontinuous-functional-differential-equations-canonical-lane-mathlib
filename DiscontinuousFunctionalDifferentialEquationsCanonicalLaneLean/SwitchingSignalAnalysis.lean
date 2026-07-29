import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean

structure SwitchingSignalPackage where
  signalSpace : Type u
  modeSet : Type v
  switchingTimes : Set ℝ
  switchingLaw : ℝ → signalSpace → modeSet
  dwellTimeCondition : Prop
  averageDwellTime : Prop
  stabilityUnderSwitch : Prop

structure SwitchingSignalEvidence (S : SwitchingSignalPackage) where
  dwellTimeConditionClosed : S.dwellTimeCondition
  averageDwellTimeClosed : S.averageDwellTime
  stabilityUnderSwitchClosed : S.stabilityUnderSwitch

def SwitchingSignalClosed (S : SwitchingSignalPackage) : Prop :=
  S.dwellTimeCondition ∧ S.averageDwellTime ∧ S.stabilityUnderSwitch

theorem switching_signal_closed_from_evidence (S : SwitchingSignalPackage)
    (E : SwitchingSignalEvidence S) : SwitchingSignalClosed S := by
  exact And.intro E.dwellTimeConditionClosed
    (And.intro E.averageDwellTimeClosed E.stabilityUnderSwitchClosed)

end DiscontinuousFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
