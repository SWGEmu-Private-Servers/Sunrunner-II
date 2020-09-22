FullAutoAssaultCommand = {
        name = "fullautoassault",

	damageMultiplier = 4.4,
	speedMultiplier = 1.5,
	healthCostMultiplier = 2.5,
	actionCostMultiplier = 2.5,
	mindCostMultiplier = 0.5,
	accuracyBonus = 35,

	animation = "fire_area",
	animType = GENERATE_INTENSITY,

	combatSpam = "fullautoassault",

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
		25 
	  )
	},

	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = CARBINEWEAPON,

	range = -1
}

AddCommand(FullAutoAssaultCommand)
