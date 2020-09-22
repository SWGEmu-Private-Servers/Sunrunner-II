merek_harvester = Creature:new {
	objectName = "@mob/creature_names:merek_harvester",
	socialGroup = "merek",
	faction = "",
	level = 62,
	chanceHit = 1.5,
	damageMin = 445,
	damageMax = 600,
	baseXp = 6281,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {160,145,140,140,160,170,180,160,-1},
	meatType = "meat_wild",
	meatAmount = 64,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/merek_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=50"},
		{"dizzyattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(merek_harvester, "merek_harvester")