Scriptname Wow_SecondaryStats Extends Quest

GlobalVariable Property Wow_Var_Level Auto

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

GlobalVariable Property Wow_Level_1 Auto
GlobalVariable Property Wow_Level_2 Auto
GlobalVariable Property Wow_Level_3 Auto
GlobalVariable Property Wow_Level_4 Auto
GlobalVariable Property Wow_Level_5 Auto
GlobalVariable Property Wow_Level_6 Auto
GlobalVariable Property Wow_Level_7 Auto
GlobalVariable Property Wow_Level_8 Auto
GlobalVariable Property Wow_Level_9 Auto
GlobalVariable Property Wow_Level_10 Auto
GlobalVariable Property Wow_Level_11 Auto
GlobalVariable Property Wow_Level_12 Auto
GlobalVariable Property Wow_Level_13 Auto
GlobalVariable Property Wow_Level_14 Auto
GlobalVariable Property Wow_Level_15 Auto
GlobalVariable Property Wow_Level_16 Auto
GlobalVariable Property Wow_Level_17 Auto
GlobalVariable Property Wow_Level_18 Auto
GlobalVariable Property Wow_Level_19 Auto
GlobalVariable Property Wow_Level_20 Auto
GlobalVariable Property Wow_Level_21 Auto
GlobalVariable Property Wow_Level_22 Auto
GlobalVariable Property Wow_Level_23 Auto
GlobalVariable Property Wow_Level_24 Auto
GlobalVariable Property Wow_Level_25 Auto
GlobalVariable Property Wow_Level_26 Auto
GlobalVariable Property Wow_Level_27 Auto
GlobalVariable Property Wow_Level_28 Auto
GlobalVariable Property Wow_Level_29 Auto
GlobalVariable Property Wow_Level_30 Auto
GlobalVariable Property Wow_Level_31 Auto
GlobalVariable Property Wow_Level_32 Auto
GlobalVariable Property Wow_Level_33 Auto
GlobalVariable Property Wow_Level_34 Auto
GlobalVariable Property Wow_Level_35 Auto
GlobalVariable Property Wow_Level_36 Auto
GlobalVariable Property Wow_Level_37 Auto
GlobalVariable Property Wow_Level_38 Auto
GlobalVariable Property Wow_Level_39 Auto
GlobalVariable Property Wow_Level_40 Auto
GlobalVariable Property Wow_Level_41 Auto
GlobalVariable Property Wow_Level_42 Auto
GlobalVariable Property Wow_Level_43 Auto
GlobalVariable Property Wow_Level_44 Auto
GlobalVariable Property Wow_Level_45 Auto
GlobalVariable Property Wow_Level_46 Auto
GlobalVariable Property Wow_Level_47 Auto
GlobalVariable Property Wow_Level_48 Auto
GlobalVariable Property Wow_Level_49 Auto
GlobalVariable Property Wow_Level_50 Auto
GlobalVariable Property Wow_Level_51 Auto
GlobalVariable Property Wow_Level_52 Auto
GlobalVariable Property Wow_Level_53 Auto
GlobalVariable Property Wow_Level_54 Auto
GlobalVariable Property Wow_Level_55 Auto
GlobalVariable Property Wow_Level_56 Auto
GlobalVariable Property Wow_Level_57 Auto
GlobalVariable Property Wow_Level_58 Auto
GlobalVariable Property Wow_Level_59 Auto
GlobalVariable Property Wow_Level_60 Auto

GlobalVariable Property Wow_Var_Initialize Auto

Event OnInit()

		RegisterForUpdate(1.0)
	
EndEvent

Event OnUpdate()

If Wow_Var_Initialize.GetValue() == 1

	Float APA = Math.Floor(Wow_Var_Level.GetValue() * 2) + (Wow_Att_Strength.GetValue() - 10) + (Wow_Att_Agility.GetValue() - 10)
	Float APS = Math.Floor((Wow_Var_Level.GetValue() * 3) + ((Wow_Att_Strength.GetValue() * 2) - 20))
	Float AP = APS
	Float Block = Math.Floor(Wow_Att_Strength.GetValue() * 0.05)
	Float Crit = Math.Floor(Wow_Att_Agility.GetValue() / 24.5)
	Float MP5 = Math.Floor(Wow_Att_Spirit.GetValue() * 0.75)
	Float Parry = Math.Floor(Wow_Att_Strength.GetValue() * 0.25)
	Float SpellPower = Math.Floor(Wow_Att_Intellect.GetValue())

	If Wow_Var_Level.GetValue() == 1
		If Wow_Level_1.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_1.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 2
		If Wow_Level_2.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_2.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 3
		If Wow_Level_3.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_3.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 4
		If Wow_Level_4.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_4.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 5
		If Wow_Level_5.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_level_5.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 6
		If Wow_Level_6.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_6.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 7
		If Wow_Level_7.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_level_7.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 8
		If Wow_Level_8.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_8.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 9
		If Wow_Level_9.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_9.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 10
		If Wow_Level_10.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_10.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 11
		If Wow_Level_11.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_11.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 12
		If Wow_Level_12.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_12.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 13
		If Wow_Level_13.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_13.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 14
		If Wow_Level_14.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_14.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 15
		If Wow_Level_15.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_15.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 16
		If Wow_Level_16.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_16.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 17
		If Wow_Level_17.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_17.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 18
		If Wow_Level_18.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_18.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 19
		If Wow_Level_19.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_19.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 20
		If Wow_Level_20.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_20.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 21
		If Wow_Level_21.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_21.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 22
		If Wow_Level_22.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_22.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 23
		If Wow_Level_23.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_23.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 24
		If Wow_Level_24.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_24.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 25
		If Wow_Level_25.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_25.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 26
		If Wow_Level_26.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_26.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 27
		If Wow_Level_27.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_27.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 28
		If Wow_Level_28.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_28.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 29
		If Wow_Level_29.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_29.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 30
		If Wow_Level_30.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_30.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 31
		If Wow_Level_31.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_31.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 32
		If Wow_Level_32.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_32.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 33
		If Wow_Level_33.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_33.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 34
		If Wow_Level_34.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_34.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 35
		If Wow_Level_35.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_35.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 36
		If Wow_Level_36.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_36.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 37
		If Wow_Level_37.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_37.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 38
		If Wow_Level_38.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_38.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 39
		If Wow_Level_39.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_39.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 40
		If Wow_Level_40.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_40.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 41
		If Wow_Level_41.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_41.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 42
		If Wow_Level_42.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_42.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 43
		If Wow_Level_43.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_43.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 44
		If Wow_Level_44.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_44.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 45
		If Wow_Level_45.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_45.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 46
		If Wow_Level_46.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_46.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 47
		If Wow_Level_47.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_47.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 48
		If Wow_Level_48.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_48.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 49
		If Wow_Level_49.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_49.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 50
		If Wow_Level_50.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_50.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 51
		If Wow_Level_51.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_51.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 52
		If Wow_Level_52.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_52.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 53
		If Wow_Level_53.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_53.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 54
		If Wow_Level_54.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_54.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 55
		If Wow_Level_55.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_55.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 56
		If Wow_Level_56.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_56.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 57
		If Wow_Level_57.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_57.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 58
		If Wow_Level_58.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_58.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 59
		If Wow_Level_59.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_59.SetValue(100)
		EndIf
	ElseIf Wow_Var_Level.GetValue() == 60
		If Wow_Level_60.GetValue() == 1
			Wow_Stat_AttackPower.Mod(AP)
			Wow_Stat_Block.Mod(Block)
			Wow_Stat_Crit.Mod(Crit)
			Wow_Stat_MP5.Mod(MP5)
			Wow_Stat_Parry.Mod(Parry)
			Wow_Stat_Spellpower.Mod(SpellPower)
			Wow_Level_60.SetValue(100)
		EndIf
	EndIf
EndIf

EndEvent