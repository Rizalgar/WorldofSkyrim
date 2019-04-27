Scriptname Wow_LevelBase extends Quest  

GlobalVariable Property Wow_Var_Class Auto
GlobalVariable Property Wow_Var_Level Auto
GlobalVariable Property Wow_Var_Experience Auto

GlobalVariable Property Wow_Att_Agility Auto
GlobalVariable Property Wow_Att_Intellect Auto
GlobalVariable Property Wow_Att_Spirit Auto
GlobalVariable Property Wow_Att_Stamina Auto
GlobalVariable Property Wow_Att_Strength Auto

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

Wow_StatDistribution Property Espresso Auto

Function XPCheck(String Level, Float XP)

	If Level == "Player"
		Wow_Var_Experience.SetValue(Wow_Var_Experience.GetValue() + XP)
	EndIf
	
	LevelUp()
	
EndFunction

Function LevelUp()
	
	Int XP = Wow_Var_Experience.GetValue() as Int
	Int Level = Wow_Var_Level.GetValue() as Int
	
	If XP > 0 && XP < 400
	ElseIf XP > 400 && XP < 1300
		Wow_Var_Level.SetValue(2)
			If Wow_Var_Class.GetValue() == 1
				If Wow_Level_2.GetValue() == 0
					Espresso.Warrior()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 2
				If Wow_Level_2.GetValue() == 0
					Espresso.Warlock()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 3
				If Wow_Level_2.GetValue() == 0
					Espresso.Shaman()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 4
				If Wow_Level_2.GetValue() == 0
					Espresso.Rogue()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 5
				If Wow_Level_2.GetValue() == 0
					Espresso.Priest()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 6
				If Wow_Level_2.GetValue() == 0
					Espresso.Paladin()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 7
				If Wow_Level_2.GetValue() == 0
					Espresso.Mage()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 8
				If Wow_Level_2.GetValue() == 0
					Espresso.Hunter()
					Wow_Level_2.SetValue(1)
				EndIf
			ElseIf Wow_Var_Class.GetValue() == 9
				If Wow_Level_2.GetValue() == 0
					Espresso.Druid()
					Wow_Level_2.SetValue(1)
				EndIf
			EndIf
	ElseIf XP > 1300 && XP < 2700
		Wow_Var_Level.SetValue(3)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_3.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_3.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_3.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_3.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_3.GetValue() == 0
				Espresso.Priest()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_3.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_3.GetValue() == 0
				Espresso.Mage()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_3.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_3.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_3.GetValue() == 0
				Espresso.Druid()
				Wow_Level_3.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2700 && XP < 4800
		Wow_Var_Level.SetValue(4)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_4.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_4.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_4.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_4.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_4.GetValue() == 0
				Espresso.Priest()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_4.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_4.GetValue() == 0
				Espresso.Mage()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_4.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_4.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_4.GetValue() == 0
				Espresso.Druid()
				Wow_Level_4.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 4800 && XP < 7600
		Wow_Var_Level.SetValue(5)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_5.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_5.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_5.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_5.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_5.GetValue() == 0
				Espresso.Priest()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_5.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_5.GetValue() == 0
				Espresso.Mage()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_5.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_5.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_5.GetValue() == 0
				Espresso.Druid()
				Wow_Level_5.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 7600 && XP < 11200
		Wow_Var_Level.SetValue(6)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_6.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_6.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_6.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_6.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_6.GetValue() == 0
				Espresso.Priest()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_6.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_6.GetValue() == 0
				Espresso.Mage()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_6.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_6.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_6.GetValue() == 0
				Espresso.Druid()
				Wow_Level_6.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 11200 && XP < 15700
		Wow_Var_Level.SetValue(7)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_7.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_3.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_7.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_7.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_7.GetValue() == 0
				Espresso.Priest()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_7.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_7.GetValue() == 0
				Espresso.Mage()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_7.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_7.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_7.GetValue() == 0
				Espresso.Druid()
				Wow_Level_7.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 15700 && XP < 21100
		Wow_Var_Level.SetValue(8)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_8.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_8.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_8.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_8.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_8.GetValue() == 0
				Espresso.Priest()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_8.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_8.GetValue() == 0
				Espresso.Mage()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_8.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_8.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_8.GetValue() == 0
				Espresso.Druid()
				Wow_Level_8.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 21100 && XP < 27600
		Wow_Var_Level.SetValue(9)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_9.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_9.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_9.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_9.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_9.GetValue() == 0
				Espresso.Priest()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_9.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_9.GetValue() == 0
				Espresso.Mage()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_9.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_9.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_9.GetValue() == 0
				Espresso.Druid()
				Wow_Level_9.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 27600 && XP < 34100
		Wow_Var_Level.SetValue(10)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_10.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_10.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_10.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_10.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_10.GetValue() == 0
				Espresso.Priest()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_10.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_10.GetValue() == 0
				Espresso.Mage()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_10.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_10.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_10.GetValue() == 0
				Espresso.Druid()
				Wow_Level_10.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 34100 && XP < 41700
		Wow_Var_Level.SetValue(11)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_11.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_11.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_11.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_11.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_11.GetValue() == 0
				Espresso.Priest()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_11.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_11.GetValue() == 0
				Espresso.Mage()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_11.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_11.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_11.GetValue() == 0
				Espresso.Druid()
				Wow_Level_11.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 41700 && XP < 50400
		Wow_Var_Level.SetValue(12)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_12.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_12.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_12.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_12.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_12.GetValue() == 0
				Espresso.Priest()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_12.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_12.GetValue() == 0
				Espresso.Mage()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_12.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_12.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_12.GetValue() == 0
				Espresso.Druid()
				Wow_Level_12.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 50400 && XP < 60200
		Wow_Var_Level.SetValue(13)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_13.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_13.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_13.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_13.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_13.GetValue() == 0
				Espresso.Priest()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_13.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_13.GetValue() == 0
				Espresso.Mage()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_13.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_13.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_13.GetValue() == 0
				Espresso.Druid()
				Wow_Level_13.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 60200 && XP < 71200
		Wow_Var_Level.SetValue(14)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_14.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_14.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_14.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_14.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_14.GetValue() == 0
				Espresso.Priest()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_14.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_14.GetValue() == 0
				Espresso.Mage()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_14.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_14.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_14.GetValue() == 0
				Espresso.Druid()
				Wow_Level_14.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 71200 && XP < 83500
		Wow_Var_Level.SetValue(15)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_15.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_15.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_15.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_15.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_15.GetValue() == 0
				Espresso.Priest()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_15.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_15.GetValue() == 0
				Espresso.Mage()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_15.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_15.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_15.GetValue() == 0
				Espresso.Druid()
				Wow_Level_15.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 83500 && XP < 97100
		Wow_Var_Level.SetValue(16)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_16.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_16.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_16.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_16.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_16.GetValue() == 0
				Espresso.Priest()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_16.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_16.GetValue() == 0
				Espresso.Mage()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_16.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_16.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_16.GetValue() == 0
				Espresso.Druid()
				Wow_Level_16.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 97100 && XP < 112100
		Wow_Var_Level.SetValue(17)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_17.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_17.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_17.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_17.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_17.GetValue() == 0
				Espresso.Priest()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_17.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_17.GetValue() == 0
				Espresso.Mage()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_17.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_17.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_17.GetValue() == 0
				Espresso.Druid()
				Wow_Level_17.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 112100 && XP < 128500
		Wow_Var_Level.SetValue(18)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_18.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_18.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_18.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_18.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_18.GetValue() == 0
				Espresso.Priest()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_18.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_18.GetValue() == 0
				Espresso.Mage()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_18.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_18.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_18.GetValue() == 0
				Espresso.Druid()
				Wow_Level_18.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 128500 && XP < 146300
		Wow_Var_Level.SetValue(19)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_19.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_19.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_19.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_19.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_19.GetValue() == 0
				Espresso.Priest()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_19.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_19.GetValue() == 0
				Espresso.Mage()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_19.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_19.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_19.GetValue() == 0
				Espresso.Druid()
				Wow_Level_19.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 146300 && XP < 163300
		Wow_Var_Level.SetValue(20)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_20.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_20.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_20.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_20.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_20.GetValue() == 0
				Espresso.Priest()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_20.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_20.GetValue() == 0
				Espresso.Mage()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_20.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_20.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_20.GetValue() == 0
				Espresso.Druid()
				Wow_Level_20.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 163300 && XP < 181100
		Wow_Var_Level.SetValue(21)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_21.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_21.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_21.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_21.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_21.GetValue() == 0
				Espresso.Priest()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_21.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_21.GetValue() == 0
				Espresso.Mage()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_21.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_21.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_21.GetValue() == 0
				Espresso.Druid()
				Wow_Level_21.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 181100 && XP < 203500
		Wow_Var_Level.SetValue(22)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_22.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_22.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_22.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_22.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_22.GetValue() == 0
				Espresso.Priest()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_22.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_22.GetValue() == 0
				Espresso.Mage()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_22.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_22.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_22.GetValue() == 0
				Espresso.Druid()
				Wow_Level_22.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 203500 && XP < 227500
		Wow_Var_Level.SetValue(23)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_23.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_23.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_23.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_23.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_23.GetValue() == 0
				Espresso.Priest()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_23.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_23.GetValue() == 0
				Espresso.Mage()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_23.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_23.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_23.GetValue() == 0
				Espresso.Druid()
				Wow_Level_23.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 227500 && XP < 253000
		Wow_Var_Level.SetValue(24)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_24.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_24.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_24.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_24.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_24.GetValue() == 0
				Espresso.Priest()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_24.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_24.GetValue() == 0
				Espresso.Mage()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_24.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_24.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_24.GetValue() == 0
				Espresso.Druid()
				Wow_Level_24.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 253000 && XP < 280200
		Wow_Var_Level.SetValue(25)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_25.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_25.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_25.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_25.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_25.GetValue() == 0
				Espresso.Priest()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_25.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_25.GetValue() == 0
				Espresso.Mage()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_25.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_25.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_25.GetValue() == 0
				Espresso.Druid()
				Wow_Level_25.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 280200 && XP < 309100
		Wow_Var_Level.SetValue(26)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_26.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_26.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_26.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_26.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_26.GetValue() == 0
				Espresso.Priest()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_26.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_26.GetValue() == 0
				Espresso.Mage()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_26.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_26.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_26.GetValue() == 0
				Espresso.Druid()
				Wow_Level_26.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 309100 && XP < 339600
		Wow_Var_Level.SetValue(27)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_27.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_27.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_27.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_27.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_27.GetValue() == 0
				Espresso.Priest()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_27.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_27.GetValue() == 0
				Espresso.Mage()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_27.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_27.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_27.GetValue() == 0
				Espresso.Druid()
				Wow_Level_27.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 339600 && XP < 371800
		Wow_Var_Level.SetValue(28)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_28.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_28.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_28.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_28.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_28.GetValue() == 0
				Espresso.Priest()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_28.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_28.GetValue() == 0
				Espresso.Mage()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_28.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_28.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_28.GetValue() == 0
				Espresso.Druid()
				Wow_Level_28.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 371800 && XP < 405700
		Wow_Var_Level.SetValue(29)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_29.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_29.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_29.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_29.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_29.GetValue() == 0
				Espresso.Priest()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_29.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_29.GetValue() == 0
				Espresso.Mage()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_29.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_29.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_29.GetValue() == 0
				Espresso.Druid()
				Wow_Level_29.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 405700 && XP < 442000
		Wow_Var_Level.SetValue(30)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_30.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_30.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_30.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_30.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_30.GetValue() == 0
				Espresso.Priest()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_30.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_30.GetValue() == 0
				Espresso.Mage()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_30.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_30.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_30.GetValue() == 0
				Espresso.Druid()
				Wow_Level_30.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 442000 && XP < 480800
		Wow_Var_Level.SetValue(31)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_31.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_31.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_31.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_31.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_31.GetValue() == 0
				Espresso.Priest()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_31.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_31.GetValue() == 0
				Espresso.Mage()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_31.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_31.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_31.GetValue() == 0
				Espresso.Druid()
				Wow_Level_31.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 480800 && XP < 522400
		Wow_Var_Level.SetValue(32)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_32.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_32.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_32.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_32.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_32.GetValue() == 0
				Espresso.Priest()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_32.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_32.GetValue() == 0
				Espresso.Mage()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_32.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_32.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_32.GetValue() == 0
				Espresso.Druid()
				Wow_Level_32.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 522400 && XP < 567000
		Wow_Var_Level.SetValue(33)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_33.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_33.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_33.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_33.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_33.GetValue() == 0
				Espresso.Priest()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_33.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_33.GetValue() == 0
				Espresso.Mage()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_33.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_33.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_33.GetValue() == 0
				Espresso.Druid()
				Wow_Level_33.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 567000 && XP < 615000
		Wow_Var_Level.SetValue(34)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_34.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_34.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_34.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_34.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_34.GetValue() == 0
				Espresso.Priest()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_34.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_34.GetValue() == 0
				Espresso.Mage()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_34.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_34.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_34.GetValue() == 0
				Espresso.Druid()
				Wow_Level_34.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 615000 && XP < 666400
		Wow_Var_Level.SetValue(35)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_35.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_35.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_35.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_35.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_35.GetValue() == 0
				Espresso.Priest()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_35.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_35.GetValue() == 0
				Espresso.Mage()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_35.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_35.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_35.GetValue() == 0
				Espresso.Druid()
				Wow_Level_35.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 666400 && XP < 721400
		Wow_Var_Level.SetValue(36)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_36.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_36.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_36.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_36.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_36.GetValue() == 0
				Espresso.Priest()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_36.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_36.GetValue() == 0
				Espresso.Mage()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_36.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_36.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_36.GetValue() == 0
				Espresso.Druid()
				Wow_Level_36.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 721400 && XP < 780100
		Wow_Var_Level.SetValue(37)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_37.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_37.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_37.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_37.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_37.GetValue() == 0
				Espresso.Priest()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_37.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_37.GetValue() == 0
				Espresso.Mage()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_37.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_37.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_37.GetValue() == 0
				Espresso.Druid()
				Wow_Level_37.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 780100 && XP < 842500
		Wow_Var_Level.SetValue(38)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_38.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_38.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_38.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_38.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_38.GetValue() == 0
				Espresso.Priest()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_38.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_38.GetValue() == 0
				Espresso.Mage()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_38.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_38.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_38.GetValue() == 0
				Espresso.Druid()
				Wow_Level_38.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 842500 && XP < 908700
		Wow_Var_Level.SetValue(39)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_39.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_39.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_39.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_39.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_39.GetValue() == 0
				Espresso.Priest()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_39.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_39.GetValue() == 0
				Espresso.Mage()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_39.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_39.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_39.GetValue() == 0
				Espresso.Druid()
				Wow_Level_39.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 908700 && XP < 978900
		Wow_Var_Level.SetValue(40)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_40.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_40.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_40.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_40.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_40.GetValue() == 0
				Espresso.Priest()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_40.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_40.GetValue() == 0
				Espresso.Mage()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_40.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_40.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_40.GetValue() == 0
				Espresso.Druid()
				Wow_Level_40.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 978900 && XP < 1053200
		Wow_Var_Level.SetValue(41)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_41.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_41.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_41.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_41.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_41.GetValue() == 0
				Espresso.Priest()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_41.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_41.GetValue() == 0
				Espresso.Mage()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_41.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_41.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_41.GetValue() == 0
				Espresso.Druid()
				Wow_Level_41.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1053200 && XP < 1131700
		Wow_Var_Level.SetValue(42)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_42.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_42.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_42.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_42.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_42.GetValue() == 0
				Espresso.Priest()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_42.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_42.GetValue() == 0
				Espresso.Mage()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_42.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_42.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_42.GetValue() == 0
				Espresso.Druid()
				Wow_Level_42.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1131700 && XP < 1214500
		Wow_Var_Level.SetValue(43)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_43.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_43.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_43.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_43.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_43.GetValue() == 0
				Espresso.Priest()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_43.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_43.GetValue() == 0
				Espresso.Mage()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_43.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_43.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_43.GetValue() == 0
				Espresso.Druid()
				Wow_Level_43.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1214500 && XP < 1301600
		Wow_Var_Level.SetValue(44)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_44.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_44.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_44.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_44.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_44.GetValue() == 0
				Espresso.Priest()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_44.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_44.GetValue() == 0
				Espresso.Mage()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_44.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_44.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_44.GetValue() == 0
				Espresso.Druid()
				Wow_Level_44.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1301600 && XP < 1393200
		Wow_Var_Level.SetValue(45)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_45.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_45.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_45.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_45.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_45.GetValue() == 0
				Espresso.Priest()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_45.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_45.GetValue() == 0
				Espresso.Mage()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_45.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_45.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_45.GetValue() == 0
				Espresso.Druid()
				Wow_Level_45.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1393200 && XP < 1489500
		Wow_Var_Level.SetValue(46)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_46.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_46.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_46.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_46.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_46.GetValue() == 0
				Espresso.Priest()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_46.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_46.GetValue() == 0
				Espresso.Mage()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_46.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_46.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_46.GetValue() == 0
				Espresso.Druid()
				Wow_Level_46.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1489500 && XP < 1590500
		Wow_Var_Level.SetValue(47)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_47.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_47.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_47.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_47.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_47.GetValue() == 0
				Espresso.Priest()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_47.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_47.GetValue() == 0
				Espresso.Mage()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_47.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_47.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_47.GetValue() == 0
				Espresso.Druid()
				Wow_Level_47.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1590500 && XP < 1696300 
		Wow_Var_Level.SetValue(48)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_48.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_48.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_48.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_48.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_48.GetValue() == 0
				Espresso.Priest()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_48.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_48.GetValue() == 0
				Espresso.Mage()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_48.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_48.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_48.GetValue() == 0
				Espresso.Druid()
				Wow_Level_48.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1696300 && XP < 1807000
		Wow_Var_Level.SetValue(49)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_49.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_49.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_49.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_49.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_49.GetValue() == 0
				Espresso.Priest()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_49.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_49.GetValue() == 0
				Espresso.Mage()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_49.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_49.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_49.GetValue() == 0
				Espresso.Druid()
				Wow_Level_49.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1807000 && XP < 1922700
		Wow_Var_Level.SetValue(50)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_50.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_50.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_50.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_50.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_50.GetValue() == 0
				Espresso.Priest()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_50.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_50.GetValue() == 0
				Espresso.Mage()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_50.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_50.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_50.GetValue() == 0
				Espresso.Druid()
				Wow_Level_50.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 1922700 && XP < 2043600
		Wow_Var_Level.SetValue(51)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_51.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_51.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_51.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_51.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_51.GetValue() == 0
				Espresso.Priest()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_51.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_51.GetValue() == 0
				Espresso.Mage()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_51.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_51.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_51.GetValue() == 0
				Espresso.Druid()
				Wow_Level_51.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2043600 && XP < 2169700
		Wow_Var_Level.SetValue(52)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_52.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_52.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_52.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_52.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_52.GetValue() == 0
				Espresso.Priest()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_52.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_52.GetValue() == 0
				Espresso.Mage()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_52.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_52.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_52.GetValue() == 0
				Espresso.Druid()
				Wow_Level_52.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2169700 && XP < 2301200
		Wow_Var_Level.SetValue(53)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_53.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_53.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_53.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_53.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_53.GetValue() == 0
				Espresso.Priest()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_53.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_53.GetValue() == 0
				Espresso.Mage()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_53.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_53.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_53.GetValue() == 0
				Espresso.Druid()
				Wow_Level_53.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2301200 && XP < 2438200
		Wow_Var_Level.SetValue(54)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_54.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_54.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_54.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_54.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_54.GetValue() == 0
				Espresso.Priest()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_54.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_54.GetValue() == 0
				Espresso.Mage()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_54.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_54.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_54.GetValue() == 0
				Espresso.Druid()
				Wow_Level_54.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2438200 && XP < 2580700
		Wow_Var_Level.SetValue(55)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_55.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_55.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_55.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_55.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_55.GetValue() == 0
				Espresso.Priest()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_55.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_55.GetValue() == 0
				Espresso.Mage()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_55.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_55.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_55.GetValue() == 0
				Espresso.Druid()
				Wow_Level_55.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2580700 && XP < 2728900
		Wow_Var_Level.SetValue(56)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_56.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_56.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_56.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_56.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_56.GetValue() == 0
				Espresso.Priest()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_56.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_56.GetValue() == 0
				Espresso.Mage()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_56.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_56.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_56.GetValue() == 0
				Espresso.Druid()
				Wow_Level_56.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2728900 && XP < 2882900
		Wow_Var_Level.SetValue(57)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_57.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_57.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_57.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_57.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_57.GetValue() == 0
				Espresso.Priest()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_57.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_57.GetValue() == 0
				Espresso.Mage()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_57.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_57.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_57.GetValue() == 0
				Espresso.Druid()
				Wow_Level_57.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 2882900 && XP < 3042800
		Wow_Var_Level.SetValue(58)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_58.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_58.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_58.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_58.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_58.GetValue() == 0
				Espresso.Priest()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_58.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_58.GetValue() == 0
				Espresso.Mage()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_58.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_58.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_58.GetValue() == 0
				Espresso.Druid()
				Wow_Level_58.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 3042800 && XP < 3208600
		Wow_Var_Level.SetValue(59)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_59.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_59.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_59.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_59.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_59.GetValue() == 0
				Espresso.Priest()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_59.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_59.GetValue() == 0
				Espresso.Mage()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_59.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_59.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_59.GetValue() == 0
				Espresso.Druid()
				Wow_Level_59.SetValue(1)
			EndIf
		EndIf
	ElseIf XP > 3208600
		Wow_Var_Level.SetValue(60)
		If Wow_Var_Class.GetValue() == 1
			If Wow_Level_60.GetValue() == 0
				Espresso.Warrior()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 2
			If Wow_Level_60.GetValue() == 0
				Espresso.Warlock()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 3
			If Wow_Level_60.GetValue() == 0
				Espresso.Shaman()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 4
			If Wow_Level_60.GetValue() == 0
				Espresso.Rogue()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 5
			If Wow_Level_60.GetValue() == 0
				Espresso.Priest()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 6
			If Wow_Level_60.GetValue() == 0
				Espresso.Paladin()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 7
			If Wow_Level_60.GetValue() == 0
				Espresso.Mage()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 8
			If Wow_Level_60.GetValue() == 0
				Espresso.Hunter()
				Wow_Level_60.SetValue(1)
			EndIf
		ElseIf Wow_Var_Class.GetValue() == 9
			If Wow_Level_60.GetValue() == 0
				Espresso.Druid()
				Wow_Level_60.SetValue(1)
			EndIf
		EndIf
	EndIf
	
EndFunction