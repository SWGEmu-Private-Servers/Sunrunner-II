CarbineBashCommand = {
        name = "carbinebash",

	damageMultiplier = 4.0,
	speedMultiplier = 2.0,
	healthCostMultiplier = 0.5,
	actionCostMultiplier = 1.0,
	mindCostMultiplier = 0.5,
        accuracyBonus = 80,

	stateEffects = {
	  StateEffect( 
		DIZZY_EFFECT, 
		{}, 
		{ "dizzy_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		100, 
		0, 
		15 
	  ),
	  StateEffect( 
		KNOCKDOWN_EFFECT, 
		{ "knockdownRecovery", "lastKnockdown" }, 
		{ "knockdown_defense" }, 
		{}, 
		110, 
		0, 
		0 
	  )
	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	animation = "ranged_melee", 
	animType = GENERATE_INTENSITY,
	combatSpam = "carbinebash",
	weaponType = CARBINEWEAPON,
	range = 6
}

AddCommand(CarbineBashCommand)
