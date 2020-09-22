queen_merek_harvester = Creature:new {
	objectName = "@mob/creature_names:queen_merek_harvester",
	socialGroup = "merek",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4825,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {160,150,145,200,150,145,150,145,-1},
	meatType = "meat_wild",
	meatAmount = 75,
	hideType = "hide_leathery",
	hideAmount = 50,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/queen_merek_harvester.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=50"},
		{"creatureareableeding","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(queen_merek_harvester, "queen_merek_harvester")