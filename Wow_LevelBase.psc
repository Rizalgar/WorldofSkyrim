Scriptname Wow_LevelBase extends Quest  

GlobalVariable Property Wow_Var_Level Auto
GlobalVariable Property Wow_Var_Experience Auto

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
		Wow_Var_Level.SetValue(1)
	ElseIf XP > 400 && XP < 1300
		Wow_Var_Level.SetValue(2)
	ElseIf XP > 1300 && XP < 2700
		Wow_Var_Level.SetValue(3)
	ElseIf XP > 2700 && XP < 4800
		Wow_Var_Level.SetValue(4)
	ElseIf XP > 4800 && XP < 7600
		Wow_Var_Level.SetValue(5)
	ElseIf XP > 7600 && XP < 11200
		Wow_Var_Level.SetValue(6)
	ElseIf XP > 11200 && XP < 15700
		Wow_Var_Level.SetValue(7)
	ElseIf XP > 15700 && XP < 21100
		Wow_Var_Level.SetValue(8)
	ElseIf XP > 21100 && XP < 27600
		Wow_Var_Level.SetValue(9)
	ElseIf XP > 27600 && XP < 34100
		Wow_Var_Level.SetValue(10)
	ElseIf XP > 34100 && XP < 41700
		Wow_Var_Level.SetValue(11)
	ElseIf XP > 41700 && XP < 50400
		Wow_Var_Level.SetValue(12)
	ElseIf XP > 50400 && XP < 60200
		Wow_Var_Level.SetValue(13)
	ElseIf XP > 60200 && XP < 71200
		Wow_Var_Level.SetValue(14)
	ElseIf XP > 71200 && XP < 83500
		Wow_Var_Level.SetValue(15)
	ElseIf XP > 83500 && XP < 97100
		Wow_Var_Level.SetValue(16)
	ElseIf XP > 97100 && XP < 112100
		Wow_Var_Level.SetValue(17)
	ElseIf XP > 112100 && XP < 128500
		Wow_Var_Level.SetValue(18)
	ElseIf XP > 128500 && XP < 146300
		Wow_Var_Level.SetValue(19)
	ElseIf XP > 146300 && XP < 163300
		Wow_Var_Level.SetValue(20)
	ElseIf XP > 163300 && XP < 181100
		Wow_Var_Level.SetValue(21)
	ElseIf XP > 181100 && XP < 203500
		Wow_Var_Level.SetValue(22)
	ElseIf XP > 203500 && XP < 227500
		Wow_Var_Level.SetValue(23)
	ElseIf XP > 227500 && XP < 253000
		Wow_Var_Level.SetValue(24)
	ElseIf XP > 253000 && XP < 280200
		Wow_Var_Level.SetValue(25)
	ElseIf XP > 280200 && XP < 309100
		Wow_Var_Level.SetValue(26)
	ElseIf XP > 309100 && XP < 339600
		Wow_Var_Level.SetValue(27)
	ElseIf XP > 339600 && XP < 371800
		Wow_Var_Level.SetValue(28)
	ElseIf XP > 371800 && XP < 405700
		Wow_Var_Level.SetValue(29)
	ElseIf XP > 405700 && XP < 442000
		Wow_Var_Level.SetValue(30)
	ElseIf XP > 442000 && XP < 480800
		Wow_Var_Level.SetValue(31)
	ElseIf XP > 480800 && XP < 522400
		Wow_Var_Level.SetValue(32)
	ElseIf XP > 522400 && XP < 567000
		Wow_Var_Level.SetValue(33)
	ElseIf XP > 567000 && XP < 615000
		Wow_Var_Level.SetValue(34)
	ElseIf XP > 615000 && XP < 666400
		Wow_Var_Level.SetValue(35)
	ElseIf XP > 666400 && XP < 721400
		Wow_Var_Level.SetValue(36)
	ElseIf XP > 721400 && XP < 780100
		Wow_Var_Level.SetValue(37)
	ElseIf XP > 780100 && XP < 842500
		Wow_Var_Level.SetValue(38)
	ElseIf XP > 842500 && XP < 908700
		Wow_Var_Level.SetValue(39)
	ElseIf XP > 908700 && XP < 978900
		Wow_Var_Level.SetValue(40)
	ElseIf XP > 978900 && XP < 1053200
		Wow_Var_Level.SetValue(41)
	ElseIf XP > 1053200 && XP < 1131700
		Wow_Var_Level.SetValue(42)
	ElseIf XP > 1131700 && XP < 1214500
		Wow_Var_Level.SetValue(43)
	ElseIf XP > 1214500 && XP < 1301600
		Wow_Var_Level.SetValue(44)
	ElseIf XP > 1301600 && XP < 1393200
		Wow_Var_Level.SetValue(45)
	ElseIf XP > 1393200 && XP < 1489500
		Wow_Var_Level.SetValue(46)
	ElseIf XP > 1489500 && XP < 1590500
		Wow_Var_Level.SetValue(47)
	ElseIf XP > 1590500 && XP < 1696300 
		Wow_Var_Level.SetValue(48)
	ElseIf XP > 1696300 && XP < 1807000
		Wow_Var_Level.SetValue(49)
	ElseIf XP > 1807000 && XP < 1922700
		Wow_Var_Level.SetValue(50)
	ElseIf XP > 1922700 && XP < 2043600
		Wow_Var_Level.SetValue(51)
	ElseIf XP > 2043600 && XP < 2169700
		Wow_Var_Level.SetValue(52)
	ElseIf XP > 2169700 && XP < 2301200
		Wow_Var_Level.SetValue(53)
	ElseIf XP > 2301200 && XP < 2438200
		Wow_Var_Level.SetValue(54)
	ElseIf XP > 2438200 && XP < 2580700
		Wow_Var_Level.SetValue(55)
	ElseIf XP > 2580700 && XP < 2728900
		Wow_Var_Level.SetValue(56)
	ElseIf XP > 2728900 && XP < 2882900
		Wow_Var_Level.SetValue(57)
	ElseIf XP > 2882900 && XP < 3042800
		Wow_Var_Level.SetValue(58)
	ElseIf XP > 3042800 && XP < 3208600
		Wow_Var_Level.SetValue(59)
	ElseIf XP > 3208600
		Wow_Var_Level.SetValue(60)
	EndIf
	
EndFunction