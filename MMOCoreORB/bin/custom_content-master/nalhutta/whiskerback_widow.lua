whiskerback_widow = Creature:new {
	objectName = "@mob/creature_names:whiskerback_widow",
	socialGroup = "whiskerback_widow",
	faction = "",
	level = 30,
	chanceHit = 1,
	damageMin = 250,
	damageMax = 320,
	baseXp = 3005,
	baseHAM = 7250,
	baseHAMmax = 8850,
	armor = 0,
	resists = {140,145,20,-1,10,5,145,-1,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_wooly",
	hideAmount = 5,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_hermit_spider.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_hermit_spider.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(whiskerback_widow, "whiskerback_widow")

