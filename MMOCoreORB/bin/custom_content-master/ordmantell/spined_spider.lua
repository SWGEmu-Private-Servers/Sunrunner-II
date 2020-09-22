spined_spider = Creature:new {
	objectName = "@mob/creature_names:spined_spider",
	socialGroup = "spined_spider",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 520,
	baseXp = 5373,
	baseHAM = 10500,
	baseHAMmax = 13000,
	armor = 1,
	resists = {150,150,140,25,145,160,185,140,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_consort.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_spiderclan_consort.iff",
	scale = 1,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(spined_spider, "spined_spider")

