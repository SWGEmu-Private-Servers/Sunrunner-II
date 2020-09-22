hoth_hog = Creature:new {
	objectName = "@mob/creature_names:hoth_hog",
	socialGroup = "hothhog",
	faction = "",
	level = 32,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 390,
	baseXp = 3255,
	baseHAM = 7150,
	baseHAMmax = 8750,
	armor = 0,
	resists = {145,35,30,-1,170,30,30,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 85,
	boneType = "bone_mammal",
	boneAmount = 45,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/hoth_hog.iff"},
	controlDeviceTemplate = "object/intangible/pet/hoth_hog.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(hoth_hog, "hoth_hog")
