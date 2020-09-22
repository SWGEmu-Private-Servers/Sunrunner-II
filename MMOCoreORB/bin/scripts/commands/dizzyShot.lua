DizzyShotCommand = {
        name = "dizzyshot",

	damageMultiplier = 3.5,
	speedMultiplier = 2.5,
	healthCostMultiplier = 1.25,
	actionCostMultiplier = 2.0,
	mindCostMultiplier = 1.25,
        accuracyBonus = 10,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		100, 
		0, 
		30 
	  )
	},
	
	weaponType = RANGEDWEAPON,

	animation = "fire_1_special_single", 
	animType = GENERATE_RANGED,

	combatSpam = "dizzyshot",

	range = -1
}

AddCommand(DizzyShotCommand)
