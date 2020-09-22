WbossAreaTremorCommand = {
	name = "wbossareatremor",
	damageMultiplier = 5.25,
	speedMultiplier = 1,

	poolsToDamage = RANDOM_ATTRIBUTE,

	combatSpam = "attack",
	animation = "creature_attack_special_1", 
	animType = GENERATE_INTENSITY,

	healthCostMultiplier = 0,
	actionCostMultiplier = 0,
	mindCostMultiplier = 0,

	areaRange = 65,
	areaAction = true,

	stateEffects = {
	  StateEffect(
		STUN_EFFECT,
		{},
		{ "stun_defense" },
		{ "jedi_state_defense", "resistance_states" },
		75,
		0,
		30
	  ),
	  StateEffect(
		BLIND_EFFECT,
		{},
		{ "blind_defense" },
		{ "jedi_state_defense", "resistance_states" },
		75,
		0,
		20
	  ),
	  StateEffect(
		INTIMIDATE_EFFECT,
		{},
		{ "intimidate_defense" },
		{ "jedi_state_defense", "resistance_states" },
		75,
		0,
		25
	  ),
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
	}
}

AddCommand(WbossAreaTremorCommand)