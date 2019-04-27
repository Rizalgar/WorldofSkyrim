Scriptname Wow_QuestReward extends Quest  
{Main script for distributing rewards.}

Actor Property PlayerRef Auto
GlobalVariable Property Wow_Var_Experience Auto
Armor Property RArmor Auto
Weapon Property RWeapon Auto
Quest Property CQuest Auto
Int Property RExp Auto
Int Property GReward Auto
MiscObject Property Gold001 Auto

Wow_LevelBase Property Fetch Auto

Event OnInit()
	RegisterForUpdate(5.0)
EndEvent

Event OnUpdate()

	If CQuest.IsCompleted() == True
		Fetch.XPCheck("Player", RExp)
		PlayerRef.AddItem(RArmor, 1)
		PlayerRef.AddItem(RWeapon, 1)
		PlayerRef.AddItem(Gold001, GReward)
		UnregisterForUpdate()
	EndIf
	
EndEvent