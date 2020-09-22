king_venom_nightspider = Creature:new {
	objectName = "@mob/creature_names:king_venom_nightspider",
	socialGroup = "spider",
	faction = "",
	level = 14,
	chanceHit = 1.25,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1031,
	baseHAM = 1800,
	baseHAMmax = 2100,
	armor = 0,
	resists = {120,140,130,110,150,130,170,130,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/king_venom_nightspider.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/hermit_spider_hue.iff",
	scale = 0.65,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"mediumpoison","stateAccuracyBonus=75"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(king_venom_nightspider, "king_venom_nightspider")