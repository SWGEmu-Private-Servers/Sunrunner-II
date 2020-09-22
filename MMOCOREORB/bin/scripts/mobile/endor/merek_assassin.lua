merek_assassin = Creature:new {
	objectName = "@mob/creature_names:merek_assassin",
	socialGroup = "merek",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 345,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 9000,
	baseHAMmax = 11800,
	armor = 1,
	resists = {150,160,140,140,145,150,160,140,-1},
	meatType = "meat_wild",
	meatAmount = 64,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/merek_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(merek_assassin, "merek_assassin")

