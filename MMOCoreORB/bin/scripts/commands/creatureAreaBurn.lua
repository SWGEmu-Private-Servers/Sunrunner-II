CreatureAreaBurnCommand = {
        name = "creatureareaburn",
        combatSpam = "attack",
        animation = "creature_attack_special_1", 
	animType = GENERATE_INTENSITY,
	dotEffects = {
	  DotEffect( 
		ONFIRE, 
		{ "resistance_fire", "fire_resist" },
		HEALTH,
		true,
		0,
		100,
		100, 
		60,
		10,
		2
	  )
	},

	damageType = HEAT_DAMAGE,
	areaRange = 55,
	areaAction = true
}

AddCommand(CreatureAreaBurnCommand)