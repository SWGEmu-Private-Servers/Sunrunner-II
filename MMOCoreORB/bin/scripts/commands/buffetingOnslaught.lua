BuffetingOnslaughtCommand = {
        name = "buffetingonslaught",

	damageMultiplier = 4.2,
	speedMultiplier = 2.0,
	healthCostMultiplier = 3.0,
	actionCostMultiplier = 2.25,
	mindCostMultiplier = 1.5,
	accuracyBonus = 85,

	animation = "fire_area", 
	animType = GENERATE_RANGED,

	combatSpam = "buffetingonslaught",
	
	coneAngle = 30,
	coneAction = true,

	stateEffects = {
	  StateEffect( 
		BLIND_EFFECT, 
		{}, 
		{ "blind_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		90, 
		0, 
		15 
	  )
	},

	skillMods = {
		
		{"heavyweapon_accuracy",10},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = HEAVYWEAPON,

	range = -1
}

AddCommand(BuffetingOnslaughtCommand)
