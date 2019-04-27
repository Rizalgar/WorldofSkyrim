Scriptname Wow_SS_Polymorph extends activemagiceffect  
{Main script for Polymorph}

Actor Property PlayerRef Auto
Race Property FoxRace Auto

Event OnEffectStart(actor target, actor caster)

	Float ManaMax = Game.GetPlayer().GetActorValue("Magicka")
	Float ManaCost = ((ManaMax / 100) * 2)
	
	Float TargetHP = target.GetActorValuePercentage("Health")
	Float TargetHR = target.GetActorValue("HealRate")
	Race TargetRace = target.GetRace()
	
	If PlayerRef.GetActorValue("Magicka") < ManaCost
		;Do nothing
	Else
		PlayerRef.DamageActorValue("Magicka", ManaCost)
		target.StopCombat()
		target.SetRace(FoxRace)
		target.SetActorValue("HealRate", 10000.0)
		Utility.Wait(30.0)
		target.SetRace(TargetRace)
		target.SetActorValue("HealRate", TargetHR)
		target.StartCombat(PlayerRef)
	EndIf
Endevent