DebilitatingJoltCommand = {
        name = "debilitatingjolt",

	damageMultiplier = 5.25,

	speedMultiplier = 2.0,

	healthCostMultiplier = 2.5,

	actionCostMultiplier = 1.75,

	mindCostMultiplier = 1.75,
        accuracyBonus = 35,

	stateEffects = {

	  StateEffect(
		STUN_EFFECT, 
		{}, 
		{ "stun_defense" }, 
		{ "jedi_state_defense", "resistance_states" },
		100, 
		0, 
		30 
	  )
	},
	
	animation = "fire_lightning_rifle_single_2",

	animType = GENERATE_INTENSITY,

	combatSpam = "debilitatingjolt",

weaponType = SPECIALHEAVYWEAPON,

	range = -1

}

AddCommand(DebilitatingJoltCommand)

