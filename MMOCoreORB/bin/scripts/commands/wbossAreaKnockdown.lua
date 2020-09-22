WbossAreaKnockdownCommand = {
	name = "wbossareaknockdown",
	damageMultiplier = 3.75,
	speedMultiplier = 1,
	
	combatSpam = "attack",
	animation = "creature_attack_special_2", 
	animType = GENERATE_INTENSITY,

	healthCostMultiplier = 0,
	actionCostMultiplier = 0,
	mindCostMultiplier = 0,

	stateEffects = {
	  StateEffect(
		DIZZY_EFFECT,
		{},
		{ "dizzy_defense" },
		{ "jedi_state_defense", "resistance_states" },
		75,
		0,
		20
	  ),
	  StateEffect(
		KNOCKDOWN_EFFECT, 
		{ "knockdownRecovery", "lastKnockdown" }, 
		{ "knockdown_defense" }, 
		{}, 
		75, 
		0, 
		0 
	  )
	},

	areaRange = 55,
	poolsToDamage = RANDOM_ATTRIBUTE,
	areaAction = true
}

AddCommand(WbossAreaKnockdownCommand)
