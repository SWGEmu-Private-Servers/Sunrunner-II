enraged_spider_mother = Creature:new {
	customName = "an enraged spined spider mother",
	socialGroup = "spined_spider",
	faction = "",
	level = 90,
	chanceHit = 10,
	damageMin = 770,
	damageMax = 1075,
	baseXp = 8950,
	baseHAM = 38700,
	baseHAMmax = 42580,
	armor = 1,
	resists = {160,170,175,145,160,175,200,155,-1},
	meatType = "meat_insect",
	meatAmount = 130,
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
	scale = 2.2,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"creatureareacombo","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_spider_mother, "enraged_spider_mother")