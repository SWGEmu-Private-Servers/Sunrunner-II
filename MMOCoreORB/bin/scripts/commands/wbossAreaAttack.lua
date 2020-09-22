WbossAreaAttackCommand = {
        name = "wbossareaattack",
	damageMultiplier = 4.25,
	speedMultiplier = 1,

	combatSpam = "attack",
	animation = "creature_attack_special_1",
	animType = GENERATE_INTENSITY,

	healthCostMultiplier = 0,
	actionCostMultiplier = 0,
	mindCostMultiplier = 0,

	areaRange = 55,
	areaAction = true,
	poolsToDamage = RANDOM_ATTRIBUTE
}

AddCommand(WbossAreaAttackCommand)
