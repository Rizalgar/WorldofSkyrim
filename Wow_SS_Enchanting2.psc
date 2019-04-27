Scriptname Wow_SS_Enchanting2 extends Quest

GlobalVariable Property Wow_P_Enchanting Auto
Actor Property PlayerRef Auto

Armor Property Wow_Armor_Stam1 Auto

Function GetEnchants()
	
	RegisterForSingleUpdate(1.0)
	
EndFunction

Event OnUpdate()
	
	Int En = Wow_P_Enchanting.GetValue() as Int
	
	If En == 1
		PlayerRef.AddItem(Wow_Armor_Stam1)
	EndIf
	
EndEvent