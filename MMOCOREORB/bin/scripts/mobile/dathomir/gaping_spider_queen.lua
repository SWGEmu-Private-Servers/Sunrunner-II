gaping_spider_queen = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_queen",
	socialGroup = "spider",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 380,
	damageMax = 450,
	baseXp = 5000,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {160,160,150,145,150,155,170,145,-1},
	meatType = "meat_insect",
	meatAmount = 120,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_queen.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/gaping_spider_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=25"},
		{"strongpoison","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_queen, "gaping_spider_queen")
