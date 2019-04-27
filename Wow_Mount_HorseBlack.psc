Scriptname Wow_Mount_HorseBlack extends activemagiceffect  

GlobalVariable Property Wow_Var_IsMounted Auto
Actor Property PlayerRef Auto
ActorBase Property Wow_Actor_HorseBlack Auto

Event OnEffectStart(actor target, actor caster)

	ActorBase Horse = Wow_Actor_HorseBlack
	
	If Wow_Var_IsMounted.GetValue() == 1
		;do nothing
	Else
		PlayerRef.PlaceActorAtMe(Horse)
		Wow_Var_IsMounted.SetValue(1)
	EndIf

EndEvent 