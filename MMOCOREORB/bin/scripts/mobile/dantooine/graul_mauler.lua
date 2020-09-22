graul_mauler = Creature:new {
	objectName = "@mob/creature_names:graul_mauler",
	socialGroup = "graul",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 345,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 10200,
	baseHAMmax = 12800,
	armor = 1,
	resists = {155,150,160,145,155,145,145,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 875,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=35"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(graul_mauler, "graul_mauler")
