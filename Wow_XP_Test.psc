Scriptname Wow_XP_Test extends activemagiceffect  

Wow_LevelBase Property Give Auto

Event OnEffectStart(Actor caster, Actor Target)

	Give.XPCheck("Player", 200)
	
EndEvent