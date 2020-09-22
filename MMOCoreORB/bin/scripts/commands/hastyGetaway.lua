HastyGetawayCommand = {
        name = "hastygetaway",

	damageMultiplier = 4,
	speedMultiplier = 2.0,
	healthCostMultiplier = 2.0,
	actionCostMultiplier = 1.25,
	mindCostMultiplier = 0.5,
	accuracyBonus = 25,

	animation = "fire_area", 
	animType = GENERATE_RANGED,

	combatSpam = "hastygetaway",
	
	coneAngle = 30,
	coneAction = true,

	stateEffects = {
	  StateEffect( 
		BLIND_EFFECT, 
		{}, 
		{ "blind_defense", "resistance_states" }, 
		{ "jedi_state_defense" }, 
		100, 
		0, 
		25 
	  ),

	  StateEffect( 
		POSTUREDOWN_EFFECT, 
		{ "postureDownRecovery" }, 
		{ "posture_change_down_defense" }, 
		{}, 
		100, 
		0, 
		0
	  )
	},

	skillMods = {
		
		{"pistol_accuracy",10},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = PISTOLWEAPON,

	range = -1
}

AddCommand(HastyGetawayCommand)
