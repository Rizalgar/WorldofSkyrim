Scriptname Wow_MCM Extends SKI_ConfigBase

Actor Property PlayerRef Auto

Message Property Wow_M_ClassSelect Auto
Message Property Wow_M_ClassSelect_2 Auto

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

GlobalVariable Property Wow_Var_Experience Auto
GlobalVariable Property Wow_Var_Level Auto
GlobalVariable Property Wow_Var_Class Auto
GlobalVariable Property Wow_Var_Initialize Auto

GlobalVariable Property Wow_P_Alchemy Auto
GlobalVariable Property Wow_P_Blacksmithing Auto
GlobalVariable Property Wow_P_Cooking Auto
GlobalVariable Property Wow_P_Enchanting Auto
GlobalVariable Property Wow_P_Engineering Auto
GlobalVariable Property Wow_P_FirstAid Auto
GlobalVariable Property Wow_P_Fishing Auto
GlobalVariable Property Wow_P_Herbalism Auto
GlobalVariable Property Wow_P_Leatherworking Auto
GlobalVariable Property Wow_P_Mining Auto
GlobalVariable Property Wow_P_Skinning Auto
GlobalVariable Property Wow_P_Tailoring Auto

GlobalVariable Property Wow_Level_1 Auto

String aVal

String sPlayerName
String sClass

Int tPlayerName
Int tClass

Int tLevel
Int tExp
Int cExp

Int tAgility
Int tIntellect
Int tSpirit
Int tStamina
Int tStrength

Int tArmor
Int tAttackPower
Int tBlock
Int tCrit
Int tEnergy
Int tHaste
Int tHealth
Int tHit
Int tMana
Int tMP5
Int tParry
Int tRage
Int tSpellPower

Int tBow
Int tDefense
Int tOHAxe
Int tOHMace
Int tOHSword
Int tTHAxe
Int tTHMace
Int tTHSword

Int tAlchemy
Int tBlacksmithing
Int tCooking
Int tEnchanting
Int tEngineering
Int tFirstAid
Int tFishing
Int tHerbalism
Int tLeatherworking
Int tMining
Int tSkinning
Int tTailoring

Event OnPageReset(String Page)
	If (Page == "")
		
		Getallstats()
		
	ElseIf (Page == "Player Stats")
	
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		
		AddHeaderOption("")
		
		tPlayerName = AddTextOption(Game.GetPlayer().GetBaseObject().GetName(), aVal)
		tClass = AddTextOption("Class: " + sClass, aVal)
		
		tLevel = AddTextOption("Level " + Wow_Var_Level.GetValueInt(), aVal)
		tExp = AddTextOption("Experience: " + Wow_Var_Experience.GetValueInt(), aVal)
		
		tAgility = AddTextOption("Agility: " + Wow_Att_Agility.GetValueInt(), aVal)
		tIntellect = AddTextOption("Intellect: " + Wow_Att_Intellect.GetValueInt(), aVal)
		
		tSpirit = AddTextOption("Spirit: " + Wow_Att_Spirit.GetValueInt(), aVal)
		tStamina = AddTextOption("Stamina: " + Wow_Att_Stamina.GetValueInt(), aVal)
		
		tStrength = AddTextOption("Strength: " + Wow_Att_Strength.GetValueInt(), aVal)
		
		;;
		
		SetCursorPosition(1)
		
		AddHeaderOption("")
		
		tArmor = AddTextOption("Armor: " + Wow_Stat_Armor.GetValueInt(), aVal)
		tAttackPower = AddTextOption("Attack Power: " + Wow_Stat_AttackPower.GetValueInt(), aVal)
		
		tBlock = AddTextOption("Block Chance: " + Wow_Stat_Block.GetValueInt(), aVal)
		tCrit = AddTextOption("Crit Chance: " + Wow_Stat_Crit.GetValueInt(), aVal)
		
		tHaste = AddTextOption("Haste: " + Wow_Stat_Haste.GetValueInt(), aVal)
		tHit = AddTextOption("Hit: " + Wow_Stat_Hit.GetValueInt(), aVal)
		
		tMP5 = AddTextOption("Mana Per 5 Seconds: " + Wow_Stat_MP5.GetValueInt(), aVal)
		tParry = AddTextOption("Parry Rating: " + Wow_Stat_Parry.GetValueInt(), aVal)
		
		tSpellPower = AddTextOption("Spell Power: " + Wow_Stat_Spellpower.GetValueInt(), aVal)

		SetCursorFillMode(LEFT_TO_RIGHT)
		SetCursorPosition(20)
		
		AddHeaderOption("")
		AddHeaderOption("")
	
	ElseIf (Page == "Initialize")
			
		If Wow_Var_Initialize.GetValueInt() == 0
			Int Class1 = Wow_M_ClassSelect.Show()
				If Class1 == 0
					Wow_Var_Class.SetValue(1) ;Warrior
					Wow_Att_Agility.SetValue(10)
					Wow_Att_Intellect.SetValue(8)
					Wow_Att_Spirit.SetValue(8)
					Wow_Att_Stamina.SetValue(11)
					Wow_Att_Strength.SetValue(17)
					Wow_Level_1.SetValue(1)
				ElseIf Class1 == 1
					Wow_Var_Class.SetValue(2) ;Warlock
					Wow_Att_Agility.SetValue(12)
					Wow_Att_Intellect.SetValue(12)
					Wow_Att_Spirit.SetValue(13)
					Wow_Att_Stamina.SetValue(11)
					Wow_Att_Strength.SetValue(6)
					Wow_Level_1.SetValue(1)
				ElseIf Class1 == 2
					Wow_Var_Class.SetValue(3) ;Shaman
					Wow_Att_Agility.SetValue(15)
					Wow_Att_Intellect.SetValue(12)
					Wow_Att_Spirit.SetValue(9)
					Wow_Att_Stamina.SetValue(11)
					Wow_Att_Strength.SetValue(7)
					Wow_Level_1.SetValue(1)
				ElseIf Class1 == 3
					Wow_Var_Class.SetValue(4) ;Rogue
					Wow_Att_Agility.SetValue(15)
					Wow_Att_Intellect.SetValue(8)
					Wow_Att_Spirit.SetValue(6)
					Wow_Att_Stamina.SetValue(11)
					Wow_Att_Strength.SetValue(14)
					Wow_Level_1.SetValue(1)
				ElseIf Class1 == 4
					Int Class2 = Wow_M_ClassSelect_2.Show()
					If Class2 == 0 
						Wow_Var_Class.SetValue(5) ;Priest
						Wow_Att_Agility.SetValue(12)
						Wow_Att_Intellect.SetValue(12)
						Wow_Att_Spirit.SetValue(9)
						Wow_Att_Stamina.SetValue(11)
						Wow_Att_Strength.SetValue(10)
						Wow_Level_1.SetValue(1)
					ElseIf Class2 == 1
						Wow_Var_Class.SetValue(6) ;Paladin
						Wow_Att_Agility.SetValue(5)
						Wow_Att_Intellect.SetValue(12)
						Wow_Att_Spirit.SetValue(9)
						Wow_Att_Stamina.SetValue(11)
						Wow_Att_Strength.SetValue(17)
						Wow_Level_1.SetValue(1)
					ElseIf Class2 == 2
						Wow_Var_Class.SetValue(7) ;Mage
						Wow_Att_Agility.SetValue(10)
						Wow_Att_Intellect.SetValue(12)
						Wow_Att_Spirit.SetValue(13)
						Wow_Att_Stamina.SetValue(11)
						Wow_Att_Strength.SetValue(8)
						Wow_Level_1.SetValue(1)
					ElseIf Class2 == 3
						Wow_Var_Class.SetValue(8) ;Hunter
						Wow_Att_Agility.SetValue(15)
						Wow_Att_Intellect.SetValue(10)
						Wow_Att_Spirit.SetValue(8)
						Wow_Att_Stamina.SetValue(11)
						Wow_Att_Strength.SetValue(10)
						Wow_Level_1.SetValue(1)
					ElseIf Class2 == 4
						Wow_Var_Class.SetValue(9) ;Druid
						Wow_Att_Agility.SetValue(15)
						Wow_Att_Intellect.SetValue(12)
						Wow_Att_Spirit.SetValue(9)
						Wow_Att_Stamina.SetValue(11)
						Wow_Att_Strength.SetValue(7)
						Wow_Level_1.SetValue(1)
					ElseIf Class2 == 5
						Int Class3 = Wow_M_ClassSelect.Show()
							If Class3 == 0
								Wow_Var_Class.SetValue(1) ;Warrior
								Wow_Att_Agility.SetValue(10)
								Wow_Att_Intellect.SetValue(8)
								Wow_Att_Spirit.SetValue(8)
								Wow_Att_Stamina.SetValue(11)
								Wow_Att_Strength.SetValue(17)
								Wow_Level_1.SetValue(1)
							ElseIf Class3 == 1
								Wow_Var_Class.SetValue(2) ;Warlock
								Wow_Att_Agility.SetValue(12)
								Wow_Att_Intellect.SetValue(12)
								Wow_Att_Spirit.SetValue(13)
								Wow_Att_Stamina.SetValue(11)
								Wow_Att_Strength.SetValue(6)
								Wow_Level_1.SetValue(1)
							ElseIf Class3 == 2
								Wow_Var_Class.SetValue(3) ;Shaman
								Wow_Att_Agility.SetValue(15)
								Wow_Att_Intellect.SetValue(12)
								Wow_Att_Spirit.SetValue(9)
								Wow_Att_Stamina.SetValue(11)
								Wow_Att_Strength.SetValue(7)
								Wow_Level_1.SetValue(1)
							ElseIf Class3 == 3
								Wow_Var_Class.SetValue(4) ;Rogue
								Wow_Att_Agility.SetValue(15)
								Wow_Att_Intellect.SetValue(8)
								Wow_Att_Spirit.SetValue(6)
								Wow_Att_Stamina.SetValue(11)
								Wow_Att_Strength.SetValue(14)
								Wow_Level_1.SetValue(1)
							ElseIf Class3 == 4
								Int Class4 = Wow_M_ClassSelect_2.Show()
								If Class4 == 0 
									Wow_Var_Class.SetValue(5) ;Priest
									Wow_Att_Agility.SetValue(12)
									Wow_Att_Intellect.SetValue(12)
									Wow_Att_Spirit.SetValue(9)
									Wow_Att_Stamina.SetValue(11)
									Wow_Att_Strength.SetValue(10)
									Wow_Level_1.SetValue(1)
								ElseIf Class4 == 1
									Wow_Var_Class.SetValue(6) ;Paladin
									Wow_Att_Agility.SetValue(5)
									Wow_Att_Intellect.SetValue(12)
									Wow_Att_Spirit.SetValue(9)
									Wow_Att_Stamina.SetValue(11)
									Wow_Att_Strength.SetValue(17)
									Wow_Level_1.SetValue(1)
								ElseIf Class4 == 2
									Wow_Var_Class.SetValue(7) ;Mage
									Wow_Att_Agility.SetValue(10)
									Wow_Att_Intellect.SetValue(12)
									Wow_Att_Spirit.SetValue(13)
									Wow_Att_Stamina.SetValue(11)
									Wow_Att_Strength.SetValue(8)
									Wow_Level_1.SetValue(1)
								ElseIf Class4 == 3
									Wow_Var_Class.SetValue(8) ;Hunter
									Wow_Att_Agility.SetValue(15)
									Wow_Att_Intellect.SetValue(10)
									Wow_Att_Spirit.SetValue(8)
									Wow_Att_Stamina.SetValue(11)
									Wow_Att_Strength.SetValue(10)
									Wow_Level_1.SetValue(1)
								ElseIf Class4 == 4
									Wow_Var_Class.SetValue(9) ;Druid
									Wow_Att_Agility.SetValue(15)
									Wow_Att_Intellect.SetValue(12)
									Wow_Att_Spirit.SetValue(9)
									Wow_Att_Stamina.SetValue(11)
									Wow_Att_Strength.SetValue(7)
									Wow_Level_1.SetValue(1)
								EndIf
							EndIf
						
					EndIf
				EndIf
			
		EndIf
		If Wow_Var_Class.GetValueInt() != 0
			Wow_Var_Initialize.SetValue(1)
		EndIf
	EndIf
EndEvent

Function Getallstats()
	
	Int pClass = Wow_Var_Class.GetValueInt()
	Float Health = Wow_Att_Stamina.GetValue() * 10
	
	If pClass == 0
		sClass = "None"
	ElseIf pClass == 1
		sClass = "Warrior"
	ElseIf pClass == 2
		sClass = "Warlock"
	ElseIf pClass == 3
		sClass = "Shaman"
	ElseIf pClass == 4
		sClass = "Rogue"
	ElseIf pClass == 5
		sClass = "Priest"
	ElseIf pClass == 6
		sClass = "Paladin"
	ElseIf pClass == 7
		sClass = "Mage"
	ElseIf pClass == 8
		sClass = "Hunter"
	ElseIf pClass == 9
		sClass = "Druid"
	EndIf
	
EndFunction