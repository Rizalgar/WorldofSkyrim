Scriptname Wow_QS_KoboldCampCleanup_VerminScript extends ReferenceAlias  
{Needed}

Event OnDeath(Actor killer)
	(GetOwningQuest() as Wow_QS_KoboldCampCleanup).KoboldKilled()
EndEvent