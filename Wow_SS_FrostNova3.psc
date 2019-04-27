Scriptname Wow_SS_FrostNova3 extends ObjectReference  
{Needed}
Actor Property PlayerRef Auto
Spell Property Wow_Spell_FrostNova2 Auto
Actor Target1
Actor Target2
Actor Target3

Event OnLoad()
	Target1 = PlayerRef.GetCombatTarget()
	Wow_Spell_FrostNova2.Cast(Self, Target1)
	If PlayerRef.GetCombatTarget() != Target2
		Target2 = Target1
		Wow_Spell_FrostNova2.Cast(Self, Target1)
		If PlayerRef.GetCombatTarget() != Target3
			Target3 = Target1
			Wow_Spell_FrostNova2.Cast(Self, Target1)
		EndIf
	EndIf

	Utility.Wait(1.0)
	Self.Disable()
	
EndEvent