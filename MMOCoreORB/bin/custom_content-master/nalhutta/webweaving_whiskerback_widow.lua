webweaving_whiskerback_widow = Creature:new {
	objectName = "@mob/creature_names:webweaving_whiskerback_widow",
	socialGroup = "whiskerback_widow",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 370,
	damageMax = 520,
	specialDamageMult = 2,
	baseXp = 4575,
	baseHAM = 9550,
	baseHAMmax = 11950,
	armor = 1,
	resists = {150,155,140,35,145,40,165,40,-1},
	meatType = "meat_insect",
	meatAmount = 125,
	hideType = "hide_wooly",
	hideAmount = 5,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_hermit_spider.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_hermit_spider.iff",
	scale = 1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(webweaving_whiskerback_widow, "webweaving_whiskerback_widow")
