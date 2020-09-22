insane_mantigrue_berserker = Creature:new {
	objectName = "@mob/creature_names:mantigrue_insane_berserker",
	socialGroup = "mantigrue",
	faction = "",
	level = 50,
	chanceHit = 1.25,
	damageMin = 450,
	damageMax = 600,
	baseXp = 10216,
	baseHAM = 10700,
	baseHAMmax = 12700,
	armor = 1,
	resists = {155,160,200,150,150,140,150,200,-1},
	meatType = "meat_carnivore",
	meatAmount = 170,
	hideType = "hide_wooly",
	hideAmount = 150,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mantigrue_night_stalker.iff"},
	controlDeviceTemplate = "object/intangible/pet/perlek_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(insane_mantigrue_berserker, "insane_mantigrue_berserker")