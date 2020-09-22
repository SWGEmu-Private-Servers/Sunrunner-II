giant_sand_beetle = Creature:new {
	objectName = "@mob/creature_names:giant_sand_beetle",
	socialGroup = "beetle",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 325,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 9300,
	baseHAMmax = 11900,
	armor = 1,
	resists = {150,155,145,140,150,140,160,145,-1},
	meatType = "meat_insect",
	meatAmount = 15,
	hideType = "hide_scaley",
	hideAmount = 20,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 4,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_sand_beetle.iff"},
	controlDeviceTemplate = "object/intangible/pet/rock_mite_hue.iff",
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },

	scale = 4,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=25"},
		{"posturedownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_sand_beetle, "giant_sand_beetle")

