UnarmedMaelstromCommand = {
        name = "unarmedmaelstrom",

	damageMultiplier = 4.3,
	speedMultiplier = 2.0,
	healthCostMultiplier = 1.5,
	actionCostMultiplier = 1.5,
	mindCostMultiplier = 1.5,
        accuracyBonus = 25,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense" }, 
		{ "jedi_state_defense", "resistance_states" },
		100, 
		0, 
		30 
	  )
	},

	animation = "showoff_2", 
	animType = GENERATE_INTENSITY,

	combatSpam = "unarmedmaelstrom",
	
	weaponType = UNARMEDWEAPON,

	range = -1
}

AddCommand(UnarmedMaelstromCommand)


