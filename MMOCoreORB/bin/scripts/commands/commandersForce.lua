CommandersForceCommand = {
        name = "commandersforce",
	combatSpam = "commandersforce",
	animation = "fire_1_special_single", 
	animType = GENERATE_RANGED,
	stateEffects = {
	  StateEffect( 
		INTIMIDATE_EFFECT, 
		{}, 
		{ "intimidate_defense" }, 
		{}, 
		90, 
		0, 
		20 
	  )
	},
	
	weaponType = RANGEDWEAPON,
	damageMultiplier = 4.0,
	speedMultiplier = 2.5,
	healthCostMultiplier = 1.25,
	actionCostMultiplier = 2.0,
	mindCostMultiplier = 1.25,
        accuracyBonus = 10,
        
	poolsToDamage = RANDOM_ATTRIBUTE,

	range = -1
}

AddCommand(CommandersForceCommand)
