MercilessSlashCommand = {
        name = "mercilessslash",

	damageMultiplier = 4.5,
	speedMultiplier = 2.3,
	healthCostMultiplier = 1.2,
	actionCostMultiplier = 2,
	mindCostMultiplier = 2.2,
	accuracyBonus = 25,

	dotEffects = {
	  DotEffect( 
		BLEEDING, 
		{ "resistance_bleeding", "bleed_resist" }, 
		ATTACK_POOL, 
		true, 
		0, 
		100, 
		100,
		60 
	  )
	},

	
	weaponType = ONEHANDMELEEWEAPON,

	animation = "combo_jedi_1", 
	animType = GENERATE_INTENSITY,

	combatSpam = "mercilessslash",


	areaRange = 5,
	areaAction = true,
	poolsToDamage = HEALTH_ATTRIBUTE,


	range = -1
}

AddCommand(MercilessSlashCommand)
