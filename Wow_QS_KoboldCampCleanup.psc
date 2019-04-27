Scriptname Wow_QS_KoboldCampCleanup extends Quest
{Script for Kobold Camp Cleanup kill count}

Quest Property Wow_Q_KoboldCampCleanup Auto
GlobalVariable Property Wow_KCC_KC Auto
GlobalVariable Property Wow_KCC_Alive Auto
ReferenceAlias[] Property Wow_Actor_KobolVermin Auto
 
Function KoboldKilled()
	
	Wow_KCC_KC.Value + 1
	
	ModObjectiveGlobal(1, Wow_KCC_KC)
	
	If Wow_KCC_KC.Value >= 8
		SetStage(20)
	EndIf
	
EndFunction