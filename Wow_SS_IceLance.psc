Scriptname Wow_SS_IceLance extends activemagiceffect  
{Main script for Ice Lance}

GlobalVariable Property Wow_Att_Intellect Auto
GlobalVariable Property Wow_Stat_SpellPower Auto
GlobalVariable Property Wow_Stat_Haste Auto
GlobalVariable Property Wow_Stat_Crit Auto

Event OnEffectStart(actor target, actor caster)
	
	Int Intellect = Wow_Att_Intellect.GetValue() as Int
	Int SpellPower = Wow_Att_Intellect.GetValue() as Int
	Int CritChance = Wow_Stat_Crit.GetValue() as Int
	
	Int Crit = Utility.RandomInt(1, 100)
	
	Float ManaMax = Game.GetPlayer().GetActorValue("Magicka")
	Float ManaCost = ((ManaMax / 100) * 2)
	Float Damage = SpellPower * 0.89
	Float CritDamage = Damage * 2
	
	If Game.GetPlayer().GetActorValue("Magicka") < ManaCost
		;do nothing
	Else
		If CritChance > Crit
			Game.GetPlayer().DamageActorValue("Magicka", ManaCost)
			target.DamageActorValue("Health", CritDamage)
		Else
			Game.GetPlayer().DamageActorValue("Magicka", ManaCost)
			target.DamageActorValue("Health", Damage)
		EndIf
	EndIf
	
EndEvent