Scriptname Wow_MP5_Script extends Quest  
{Handles mana per 5 seconds gain}

GlobalVariable Property Wow_Stat_MP5 Auto
GlobalVariable Property Wow_Var_Class Auto

Event OnInit()
	RegisterForUpdate(5.0)
EndEvent

Event OnUpdate()

	Int MP5 = Wow_Stat_MP5.GetValue() as Int
	
	If Game.GetPlayer().IsInCombat() == True
		;DoNothing
	Else
		If Wow_Var_Class.GetValue() != 1 && Wow_Var_Class.GetValue() != 4
			Game.GetPlayer().RestoreActorValue("Magicka", MP5)
		EndIf
	EndIf
	
EndEvent