Scriptname Wow_Enemy_Stats extends Actor  
{Main script for enemy damage and stats}

GlobalVariable Property Wow_Stat_Armor Auto
GlobalVariable Property Wow_Var_Experience Auto
ObjectReference Property Marker Auto
Actor Property PlayerRef Auto
ActorBase Property Spawned Auto
MiscObject Property Gold001 Auto

Wow_LevelBase Property Fetch Auto

Int Property Health Auto
Int Property Damage Auto
Int Property DamageMax Auto
Int Property Respawn Auto
Int Property Decay Auto
Int Property Exp Auto
Int Property GMin Auto
Int Property GMax Auto

Event OnInit()

	Int DamageInt = Utility.RandomInt(Damage, DamageMax)

	Self.SetActorValue("Health", Health)
	Self.SetActorValue("MeleeDamage", DamageInt)
	Self.SetActorValue("UnarmedDamage", DamageInt)
	Self.SetActorValue("WeaponDamage", DamageMax)
	
EndEvent

Event OnDeath(actor killer)
		Wow_Var_Experience.Mod(Exp)
		Utility.Wait(30)
		Self.Delete()
		Utility.Wait(Respawn)
		Marker.PlaceActorAtMe(Spawned)

EndEvent