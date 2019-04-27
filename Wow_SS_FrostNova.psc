Scriptname Wow_SS_FrostNova extends activemagiceffect  
{Main script for frost nova}

Actor Property PlayerRef Auto
GlobalVariable Property Wow_Att_Intellect Auto
GlobalVariable Property Wow_Stat_SpellPower Auto
GlobalVariable Property Wow_Stat_Haste Auto
GlobalVariable Property Wow_Stat_Crit Auto
MiscObject Property Wow_FrostNovaGem Auto

Actor Target2
Actor Target3

Event OnEffectStart(actor caster, actor target)

	Int Intellect = Wow_Att_Intellect.GetValue() as Int
	Int SpellPower = Wow_Att_Intellect.GetValue() as Int
	Int CritChance = Wow_Stat_Crit.GetValue() as Int
	
	Int Crit = Utility.RandomInt(1, 100)
	
	Float ManaMax = Game.GetPlayer().GetActorValue("Magicka")
	Float ManaCost = ((ManaMax / 100) * 2)
	Float Damage = SpellPower * 0.79
	Float CritDamage = Damage * 2
	
	If PlayerRef.GetActorValue("Magicka") < ManaCost
		;Do nothing
	Else
		PlayerRef.DamageActorValue("Magicka", ManaCost)	
		PlayerRef.PlaceAtMe(Wow_FrostNovaGem)
		If CritChance > Crit
			caster.DamageActorValue("Health", CritDamage)
			If PlayerRef.GetCombatTarget() != Target2
				Target2 = caster
				caster.DamageActorValue("Health", CritDamage)
				If PlayerRef.GetCombatTarget() != Target3
					Target3 = caster
					caster.DamageActorValue("Health", CritDamage)
				EndIf
			EndIf
		Else
			caster.DamageActorValue("Health", Damage)
			If PlayerRef.GetCombatTarget() != Target2
				Target2 = caster
				caster.DamageActorValue("Health", Damage)
				If PlayerRef.GetCombatTarget() != Target3
					Target3 = caster
					caster.DamageActorValue("Health", Damage)
				EndIf
			EndIf
		EndIf
	EndIf
	
EndEvent