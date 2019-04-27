Scriptname Wow_SS_P_Enchanting extends activemagiceffect  
{Script to open enchanting menu}

ObjectReference Property CraftingEnchantingWorkBench Auto

Wow_SS_Enchanting2 Property Fetch Auto

Event OnEffectStart(actor target, actor caster)

	CraftingEnchantingWorkBench.Activate(Game.GetPlayer())
	Fetch.GetEnchants()
	
EndEvent