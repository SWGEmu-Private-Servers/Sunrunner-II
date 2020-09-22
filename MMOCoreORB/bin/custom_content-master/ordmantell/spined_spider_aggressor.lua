spined_spider_aggressor = Creature:new {
	objectName = "@mob/creature_names:spined_spider_aggressor",
	socialGroup = "spined_spider",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 510,
	damageMax = 620,
	baseXp = 5973,
	baseHAM = 13500,
	baseHAMmax = 16250,
	armor = 1,
	resists = {160,155,165,150,160,160,185,150,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_consort.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_spiderclan_consort.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(spined_spider_aggressor, "spined_spider_aggressor")
