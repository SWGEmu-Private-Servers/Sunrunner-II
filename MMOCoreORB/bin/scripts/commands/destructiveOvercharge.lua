DestructiveOverchargeCommand = {
        name = "destructiveovercharge",

	damageMultiplier = 5.25,
	speedMultiplier = 3.0,
	healthCostMultiplier = 3.0,
	actionCostMultiplier = 2.25,
	mindCostMultiplier = 1.5,
	accuracyBonus = 85,

	animation = "fire_5_single", 
	animType = GENERATE_RANGED,

	combatSpam = "destructiveovercharge",

	stateEffects = {
	  StateEffect( 
		STUN_EFFECT, 
		{}, 
		{ "stun_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		100, 
		0, 
		30 
	  )
	},

	skillMods = {
		
		{"heavyweapon_accuracy",10},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = HEAVYWEAPON,

	range = -1
}

AddCommand(DestructiveOverchargeCommand)
