SingleBurn = {
        name = "singleburn",
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
	}

}

AddCommand(SingleBurn)