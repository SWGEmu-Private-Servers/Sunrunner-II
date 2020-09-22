EngulfingFlameCommand = {
        name = "engulfingflame",

	damageMultiplier = 2.5,
	speedMultiplier = 2.0,
	healthCostMultiplier = 1,
	actionCostMultiplier = 1,
	mindCostMultiplier = 1,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense" }, 
		{ "jedi_state_defense", "resistance_states" },
		100, 
		0, 
		30 
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

	animation = "fire_flame_thrower_cone_1", 
	animType = GENERATE_RANGED,

	combatSpam = "engulfingflame",
	
	weaponType = SPECIALHEAVYWEAPON,

	range = -1
}

AddCommand(EngulfingFlameCommand)
