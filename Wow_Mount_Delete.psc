Scriptname Wow_Mount_Delete extends Actor  

GlobalVariable Property Wow_Var_IsMounted Auto
Actor Property PlayerRef Auto

Event OnLoad()
	RegisterForUpdate(5.0)
EndEvent

Event OnUpdate()
	
	If PlayerRef.IsOnMount() == True
		;nothing
	Else
		Self.Delete()
		Wow_Var_IsMounted.SetValue(0)
	EndIf
	
EndEvent