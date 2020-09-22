gaping_spider_recluse_queen = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse_queen",
	socialGroup = "spider",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 510,
	damageMax = 730,
	baseXp = 6563,
	baseHAM = 12500,
	baseHAMmax = 16000,
	armor = 1,
	resists = {160,165,155,190,160,160,200,150,-1},
	meatType = "meat_insect",
	meatAmount = 110,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/gaping_spider_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"strongpoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_recluse_queen, "gaping_spider_recluse_queen")