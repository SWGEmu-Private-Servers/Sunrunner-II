DazingShockCommand = {
        name = "dazingshock",

	damageMultiplier = 4,

	speedMultiplier = 2.0,

	healthCostMultiplier = 1.75,

	actionCostMultiplier = 1.5,

	mindCostMultiplier = 1.5,
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
	
	animation = "fire_lightning_rifle_single_1",

	animType = GENERATE_INTENSITY,

	combatSpam = "dazingshock",
	
weaponType = SPECIALHEAVYWEAPON,

	range = -1
}

AddCommand(DazingShockCommand)

