CommandosGambitCommand = {
        name = "commandosgambit",

	damageMultiplier = 9.5,
	speedMultiplier = 10,
	healthCostMultiplier = 3.5,
	actionCostMultiplier = 2.75,
	mindCostMultiplier = 2,
	accuracyBonus = 85,

	animation = "fire_7_single", 
	animType = GENERATE_RANGED,

	combatSpam = "commandosgambit",

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
		
		{"thrown_accuracy",10},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = HEAVYWEAPON,

	range = -1
}

AddCommand(CommandosGambitCommand)
