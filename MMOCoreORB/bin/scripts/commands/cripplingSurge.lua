CripplingSurgeCommand = {
        name = "cripplingsurge",

	damageMultiplier = 4.25,

	speedMultiplier = 2.0,

	healthCostMultiplier = 2.5,

	actionCostMultiplier = 1.75,

	mindCostMultiplier = 1.75,
        accuracyBonus = 20,

	stateEffects = {
	  StateEffect( 
		KNOCKDOWN_EFFECT, 
		{ "knockdownRecovery", "lastKnockdown" }, 
		{ "knockdown_defense" }, 
		{},
		100, 
		0, 
		0 
 	  )
	},
	
	animation = "fire_lightning_rifle_single_2",

	animType = GENERATE_INTENSITY,

	combatSpam = "cripplingsurge",

weaponType = SPECIALHEAVYWEAPON,

	range = -1
}

AddCommand(CripplingSurgeCommand)
