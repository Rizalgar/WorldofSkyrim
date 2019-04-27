Scriptname Wow_SS_FrostNova2 extends ObjectReference  
{Script that freezes the enemies}

Actor Property PlayerRef Auto
ObjectReference Property Wow_Frostnova_Invisibile Auto

Event OnLoad()

	ObjectReference Nova = Wow_Frostnova_Invisibile as ObjectReference
	Self.PlaceAtMe(Nova)
	Nova.Enable()
	
	
	Utility.Wait(2.0)
	
	Self.Disable()
	Self.Delete()
	
EndEvent