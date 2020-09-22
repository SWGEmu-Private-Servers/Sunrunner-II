CrownShotCommand = {
    name = "crownshot",
	
	damageMultiplier = 3.6,
	speedMultiplier = 2.0,
	healthCostMultiplier = 0.5,
	actionCostMultiplier = 1.0,
	mindCostMultiplier = 0.5,
        accuracyBonus = 25,

	poolsToDamage = MIND_ATTRIBUTE,

	animation = "fire_1_special_single", 
	animType = GENERATE_RANGED,

	combatSpam = "crownshot",
	
	dotEffects = {
	  DotEffect( 
		BLEEDING, 
		{ "resistance_bleeding", "bleed_resist" },
		MIND,
		true,
		0,
		100,
		120, 
		120
	  )
	},
	
	weaponType = PISTOLWEAPON,	

	range = -1
}

AddCommand(CrownShotCommand)
