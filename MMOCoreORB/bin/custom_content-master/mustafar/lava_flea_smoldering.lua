lava_flea_smoldering = Creature:new {
	objectName = "@monster_name:smoldering_lava_flea",
	socialGroup = "lavaflea",
	faction = "",
	level = 35,
	chanceHit = 1,
	damageMin = 310,
	damageMax = 430,
	baseXp = 3500,
	baseHAM = 8250,
	baseHAMmax = 9700,
	armor = 0,
	resists = {145,145,25,200,15,145,160,35,-1},
	meatType = "meat_insect",
	meatAmount = 255,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/lava_flea_smoldering.iff"},
	hues = { 29, 32, 52, 54, 55, 64, 77, 82, 83 },
	controlDeviceTemplate = "object/intangible/pet/lava_flea.iff",
	lootGroups = {},
	scale = 1.1,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=25"},
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(lava_flea_smoldering, "lava_flea_smoldering")
