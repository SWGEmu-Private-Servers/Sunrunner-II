DisablingShotCommand = {
	name = "disablingshot",

	damageMultiplier = 3.0,
	speedMultiplier = 2.0,
	healthCostMultiplier = 0.5,
	actionCostMultiplier = 2.0,
	mindCostMultiplier = 0.5,
	accuracyBonus = 55,

	animation = "fire_1_special_single",

	combatSpam = "disablingshot",
	
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

	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = RIFLEWEAPON,

	range = -1
}

AddCommand(DisablingShotCommand)
