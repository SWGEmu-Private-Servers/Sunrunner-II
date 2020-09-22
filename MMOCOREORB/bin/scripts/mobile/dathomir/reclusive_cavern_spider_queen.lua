reclusive_cavern_spider_queen = Creature:new {
	objectName = "@mob/creature_names:cave_gaping_spider_recluse_queen",
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 70,
	chanceHit = 1.5,
	damageMin = 510,
	damageMax = 730,
	baseXp = 6747,
	baseHAM = 13500,
	baseHAMmax = 16500,
	armor = 1,
	resists = {160,160,160,150,150,170,200,150,-1},
	meatType = "meat_insect",
	meatAmount = 145,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.04,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse.iff"},
	controlDeviceTemplate = "object/intangible/pet/gaping_spider_hue.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"strongpoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(reclusive_cavern_spider_queen, "reclusive_cavern_spider_queen")