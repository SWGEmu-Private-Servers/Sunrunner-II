sayormi_spined_spider = Creature:new {
	objectName = "@mob/creature_names:sayormi_spined_spider",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 75,
	chanceHit = 1.5,
	damageMin = 550,
	damageMax = 775,
	baseXp = 7223,
	baseHAM = 15750,
	baseHAMmax = 18000,
	armor = 1,
	resists = {155,160,155,145,150,160,200,145,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_consort.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=15"},
		{"intimidationattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(sayormi_spined_spider, "sayormi_spined_spider")
