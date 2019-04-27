Scriptname Wow_QS_InvestigateEchoRidge extends Quest  

Quest Property Wow_Q_InvestigateEchoRidge Auto
GlobalVariable Property Wow_IER_Alive Auto
GlobalVariable Property Wow_IER_KC Auto
ActorBase Property Wow_Actor_KobolWorker Auto

Function WorkerKilled()

	Wow_IER_KC.Value + 1
	ModObjectiveGlobal(1, Wow_IER_KC)
	
	If Wow_IER_KC.GetValue() >= 10
		SetStage(20)
	EndIf
	
EndFunction