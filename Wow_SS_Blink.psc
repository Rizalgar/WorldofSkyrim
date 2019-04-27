Scriptname Wow_SS_Blink extends activemagiceffect  
{Blink script, duh}

Actor Property PlayerRef Auto

Event OnEffectStart(actor caster, actor target)

	Float ManaMax = Game.GetPlayer().GetActorValue("Magicka")
	Float ManaCost = ((ManaMax / 100) * 2)
	
	If PlayerRef.GetActorValue("Magicka") < ManaCost
		;Do nothing
	Else
		PlayerRef.DamageActorValue("Magicka", ManaCost)
	EndIf
	
EndEvent