RuthlessSurgeCommand = {
        name = "ruthlesssurge",

	damageMultiplier = 3,
	speedMultiplier = 2.0,
	healthCostMultiplier = 3.0,
	actionCostMultiplier = 2.25,
	mindCostMultiplier = 1.5,
	accuracyBonus = 85,

	animation = "fire_area_no_trails", 
	animType = GENERATE_RANGED,

	combatSpam = "ruthlesssurge",
	
	coneAngle = 30,
	coneAction = true,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		100, 
		0, 
		10 
	  ),
	  StateEffect( 
		KNOCKDOWN_EFFECT, 
		{ "knockdownRecovery", "lastKnockdown" }, 
		{ "knockdown_defense" }, 
		{}, 
		85, 
		0, 
		0 
	  )
	},

	skillMods = {
		
		{"heavyweapon_accuracy",10},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = HEAVYWEAPON,

	range = -1
}

AddCommand(RuthlessSurgeCommand)
