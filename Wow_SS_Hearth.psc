Scriptname Wow_SS_Hearth extends activemagiceffect  
{For hearthing, silly.}

ObjectReference Property HearthMarker Auto
Actor Property PlayerRef Auto

Event OnEffectStart(Actor target, Actor caster)

	caster.MoveTo(HearthMarker)
	
EndEvent