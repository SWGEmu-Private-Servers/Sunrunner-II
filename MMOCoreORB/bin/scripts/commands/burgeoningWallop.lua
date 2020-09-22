BurgeoningWallopCommand = {
        name = "burgeoningwallop",

	damageMultiplier = 4.3,
	speedMultiplier = 2.8,
	healthCostMultiplier = 1.5,
	actionCostMultiplier = 2.1,
	mindCostMultiplier = 1.4,
	accuracyBonus = 15,

	stateEffects = {
	  StateEffect( 
		BLIND_EFFECT, 
		{}, 
		{ "blind_defense", }, 
		{ "jedi_state_defense", "resistance_states" }, 
		60, 
		0, 
		30 
	  )
	},

	
	weaponType = TWOHANDMELEEWEAPON,

	animation = "showoff_3", 
	animType = GENERATE_INTENSITY,

	combatSpam = "burgeoningwallop",

	range = -1
}

AddCommand(BurgeoningWallopCommand)
