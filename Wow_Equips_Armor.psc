Scriptname Wow_Equips_Armor extends Actor  
{Handles stat bonuses for armor}

GlobalVariable Property Wow_Att_Agility Auto
GlobalVariable Property Wow_Att_Intellect Auto
GlobalVariable Property Wow_Att_Spirit Auto
GlobalVariable Property Wow_Att_Stamina Auto
GlobalVariable Property Wow_Att_Strength Auto

GlobalVariable Property Wow_Skill_Bow Auto
GlobalVariable Property Wow_Skill_Defense Auto
GlobalVariable Property Wow_Skill_OH_Axe Auto
GlobalVariable Property Wow_Skill_OH_Mace Auto
GlobalVariable Property Wow_Skill_OH_Sword Auto
GlobalVariable Property Wow_Skill_TH_Axe Auto
GlobalVariable Property Wow_Skill_TH_Mace Auto
GlobalVariable Property Wow_Skill_TH_Sword Auto

GlobalVariable Property Wow_Stat_Armor Auto
GlobalVariable Property Wow_Stat_AttackPower Auto
GlobalVariable Property Wow_Stat_Block Auto
GlobalVariable Property Wow_Stat_Crit Auto
GlobalVariable Property Wow_Stat_Energy Auto
GlobalVariable Property Wow_Stat_Haste Auto
GlobalVariable Property Wow_Stat_Health Auto
GlobalVariable Property Wow_Stat_Hit Auto
GlobalVariable Property Wow_Stat_Mana Auto
GlobalVariable Property Wow_Stat_MP5 Auto
GlobalVariable Property Wow_Stat_Parry Auto
GlobalVariable Property Wow_Stat_Rage Auto
GlobalVariable Property Wow_Stat_Spellpower Auto

Int Property Agility Auto
Int Property Intellect Auto
Int Property Spirit Auto
Int Property Stamina Auto
Int Property Strength Auto

Int Property Armors Auto
Int Property AttackPower Auto
Int Property Block Auto
Int Property Crit Auto
Int Property Haste Auto
Int Property Hit Auto
Int Property MP5 Auto
Int Property Parry Auto
Int Property SpellPower Auto

Event OnEquipped(Actor ak)

	If ak == Game.GetPlayer()
		Wow_Att_Agility.SetValue((Wow_Att_Agility.GetValue()) + Agility)
		Wow_Att_Intellect.SetValue((Wow_Att_Intellect.GetValue()) + Intellect)
		Wow_Att_Spirit.SetValue((Wow_Att_Spirit.GetValue()) + Spirit)
		Wow_Att_Stamina.SetValue((Wow_Att_Stamina.GetValue()) + Stamina)
		Wow_Att_Strength.SetValue((Wow_Att_Strength.GetValue()) + Strength)
		Wow_Stat_Armor.SetValue((Wow_Stat_Armor.GetValue()) + Armors)
		Wow_Stat_AttackPower.SetValue((Wow_Stat_AttackPower.GetValue()) + AttackPower)
		Wow_Stat_Block.SetValue((Wow_Stat_Block.GetValue()) + Block)
		Wow_Stat_Crit.SetValue((Wow_Stat_Crit.GetValue()) + Crit)
		Wow_Stat_Haste.SetValue((Wow_Stat_Haste.GetValue()) + Haste)
		Wow_Stat_Hit.SetValue((Wow_Stat_Hit.GetValue()) + Hit)
		Wow_Stat_MP5.SetValue((Wow_Stat_MP5.GetValue()) + MP5)
		Wow_Stat_Parry.SetValue((Wow_Stat_Parry.GetValue()) + Parry)
		Wow_Stat_Spellpower.SetValue((Wow_Stat_Spellpower.GetValue()) + SpellPower)
	EndIf
	
EndEvent

Event OnUnequipped(Actor ak)

	If ak == Game.GetPlayer()
		Wow_Att_Agility.SetValue((Wow_Att_Agility.GetValue()) - Agility)
		Wow_Att_Intellect.SetValue((Wow_Att_Intellect.GetValue()) - Intellect)
		Wow_Att_Spirit.SetValue((Wow_Att_Spirit.GetValue()) - Spirit)
		Wow_Att_Stamina.SetValue((Wow_Att_Stamina.GetValue()) - Stamina)
		Wow_Att_Strength.SetValue((Wow_Att_Strength.GetValue()) - Strength)
		Wow_Stat_Armor.SetValue((Wow_Stat_Armor.GetValue()) - Armors)
		Wow_Stat_AttackPower.SetValue((Wow_Stat_AttackPower.GetValue()) - AttackPower)
		Wow_Stat_Block.SetValue((Wow_Stat_Block.GetValue()) - Block)
		Wow_Stat_Crit.SetValue((Wow_Stat_Crit.GetValue()) - Crit)
		Wow_Stat_Haste.SetValue((Wow_Stat_Haste.GetValue()) - Haste)
		Wow_Stat_Hit.SetValue((Wow_Stat_Hit.GetValue()) - Hit)
		Wow_Stat_MP5.SetValue((Wow_Stat_MP5.GetValue()) - MP5)
		Wow_Stat_Parry.SetValue((Wow_Stat_Parry.GetValue()) - Parry)
		Wow_Stat_Spellpower.SetValue((Wow_Stat_Spellpower.GetValue()) - SpellPower)
	EndIf
	
EndEvent