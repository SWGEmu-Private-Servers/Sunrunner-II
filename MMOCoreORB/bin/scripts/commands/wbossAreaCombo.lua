WbossAreaComboCommand = {
	name = "wbossareacombo",
	damageMultiplier = 4,
	speedMultiplier = 1,

	poolsToDamage = RANDOM_ATTRIBUTE,

	combatSpam = "attack",
	animation = "creature_attack_special_1", 
	animType = GENERATE_INTENSITY,

	healthCostMultiplier = 0,
	actionCostMultiplier = 0,
	mindCostMultiplier = 0,

	areaRange = 55,
	areaAction = true,

	stateEffects = {
	  StateEffect(
		STUN_EFFECT,
		{},
		{ "stun_defense" },
		{ "jedi_state_defense", "resistance_states" },
		75,
		0,
		20
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
		20
	  )
	}
}

AddCommand(WbossAreaComboCommand)
