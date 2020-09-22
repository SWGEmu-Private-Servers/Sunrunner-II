PunishingShotCommand = {
        name = "punishingshot",

	damageMultiplier = 3,
	speedMultiplier = 2.0,
	healthCostMultiplier = 0.5,
	actionCostMultiplier = 1.5,
	mindCostMultiplier = 0.5,
	accuracyBonus = 35,

	animation = "charge",

	combatSpam = "punishingshot",

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

	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = RANGEDWEAPON,

	range = -1
}

AddCommand(PunishingShotCommand)
