BarrageShotCommand = {
        name = "barrageshot",

	damageMultiplier = 3.5,
	speedMultiplier = 2.0,
	healthCostMultiplier = 2.0,
	actionCostMultiplier = 1.25,
	mindCostMultiplier = 0.5,
	accuracyBonus = 25,

	animation = "fire_7_single", 
	animType = GENERATE_RANGED,

	combatSpam = "barrageshot",
	
	coneAngle = 30,
	coneAction = true,

	stateEffects = {
	  StateEffect( 
		STUN_EFFECT, 
		{}, 
		{ "stun_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		90, 
		0, 
		30 
	  )
	},

	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = RANGEDWEAPON,

	range = -1
}

AddCommand(BarrageShotCommand)
