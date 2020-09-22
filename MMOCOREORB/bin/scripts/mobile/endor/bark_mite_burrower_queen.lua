bark_mite_burrower_queen = Creature:new {
	objectName = "@mob/creature_names:bark_mite_burrower_queen",
	socialGroup = "mite",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 440,
	damageMax = 590,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {160,150,150,155,150,180,180,145,-1},
	meatType = "meat_insect",
	meatAmount = 50,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bark_mite_burrower_queen.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/bark_mite_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"strongdisease","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(bark_mite_burrower_queen, "bark_mite_burrower_queen")