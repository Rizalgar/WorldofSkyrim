Scriptname Wow_StatDistribution extends Quest  
{Handles stat distribution for leveling}

Message Property Wow_LevelUp Auto

;Globals
GlobalVariable Property Wow_Att_Agility Auto
GlobalVariable Property Wow_Att_Intellect Auto
GlobalVariable Property Wow_Att_Spirit Auto
GlobalVariable Property Wow_Att_Stamina Auto
GlobalVariable Property Wow_Att_Strength Auto
GlobalVariable Property Wow_Var_Level Auto
GlobalVariable Property Wow_Var_Class Auto

Int Agility
Int Intellect
Int Spirit
Int Stamina
Int Strength

Function Warrior()

Float BaseAgility = Math.Ceiling(Wow_Var_Level.GetValue() * 1.87)
Float BaseIntellect = Math.Ceiling(Wow_Var_Level.GetValue() * 1.48)
Float BaseSpirit = Math.Ceiling(Wow_Var_Level.GetValue() * 1.41)
Float BaseStamina = Math.Ceiling(Wow_Var_Level.GetValue() * 1.86)
Float BaseStrength = Math.Ceiling(Wow_Var_Level.GetValue() * 3.05)

Float Health = Wow_Att_Stamina.GetValue() * 10

Wow_Att_Agility.Mod(BaseAgility)
Wow_Att_Intellect.Mod(BaseIntellect)
Wow_Att_Spirit.Mod(BaseSpirit)
Wow_Att_Stamina.Mod(BaseStamina)
Wow_Att_Strength.Mod(BaseStrength)
Game.GetPlayer().SetActorValue("Health", Health)

Debug.Notification("You have leveled up! Your stats have been increased!")

EndFunction

Function Warlock()
EndFunction

Function Shaman()
EndFunction

Function Rogue()
EndFunction

Function Priest()
EndFunction

Function Paladin()
EndFunction

Function Mage()
EndFunction

Function Hunter()
EndFunction

Function Druid()
EndFunction