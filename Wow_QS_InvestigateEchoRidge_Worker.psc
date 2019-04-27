Scriptname Wow_QS_InvestigateEchoRidge_Worker extends ReferenceAlias  

Event OnDeath(Actor killer)
	(GetOwningQuest() as Wow_QS_InvestigateEchoRidge).WorkerKilled()
EndEvent