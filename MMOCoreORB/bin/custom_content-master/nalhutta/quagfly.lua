quagfly = Creature:new {
	objectName = "@mob/creature_names:quagfly",
	socialGroup = "quagfly",
	faction = "",
	level = 20,
	chanceHit = 1,
	damageMin = 150,
	damageMax = 200,
	baseXp = 1609,
	baseHAM = 4250,
	baseHAMmax = 5850,
	armor = 0,
	resists = {25,140,5,-1,-1,-1,145,5,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "hide_scaley",
	hideAmount = 30,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_chuba_fly.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_chuba_fly.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(quagfly, "quagfly")
