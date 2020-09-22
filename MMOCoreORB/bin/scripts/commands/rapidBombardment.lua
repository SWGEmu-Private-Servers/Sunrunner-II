RapidBombardmentCommand = {
        name = "rapidbombardment",

	damageMultiplier = 2,
	speedMultiplier = 1,
	healthCostMultiplier = 1.75,
	actionCostMultiplier = 1.75,
	mindCostMultiplier = 1.75,
	accuracyBonus = 85,

	animation = "fire_5_single", 
	animType = GENERATE_RANGED,

	combatSpam = "rapidbombardment",

	skillMods = {
		
		{"heavyweapon_accuracy",15},

	},


	poolsToDamage = RANDOM_ATTRIBUTE,
	
	weaponType = HEAVYWEAPON,

	range = -1
}

AddCommand(RapidBombardmentCommand)
