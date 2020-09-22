UnyieldingBatterCommand = {
        name = "unyieldingbatter",

	damageMultiplier = 4.4,
	speedMultiplier = 2.8,
	healthCostMultiplier = 1.5,
	actionCostMultiplier = 2.2,
	mindCostMultiplier = 1.4,
	accuracyBonus = 15,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense", }, 
		{ "jedi_state_defense", "resistance_states" }, 
		50, 
		0, 
		30 
	  )
	},

	
	weaponType = POLEARMWEAPON,

	animation = "showoff_2", 
	animType = GENERATE_INTENSITY,

	combatSpam = "unyieldingbatter",

	range = -1
}

AddCommand(UnyieldingBatterCommand)
