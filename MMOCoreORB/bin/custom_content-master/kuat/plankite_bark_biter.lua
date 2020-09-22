plankite_bark_biter = Creature:new {
	objectName = "@mob/creature_names:plankite_bark_biter",
	socialGroup = "plankite",
	faction = "",
	level = 25,
	chanceHit = 1,
	damageMin = 200,
	damageMax = 240,
	baseXp = 1857,
	baseHAM = 3000,
	baseHAMmax = 4550,
	armor = 0,
	resists = {20,15,10,-1,5,5,15,10,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "hide_scaley",
	hideAmount = 15,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/shear_mite_hue.iff"},
	hues = { 28, 29, 30, 31, 46, 47, 48, 50, 51 },
	controlDeviceTemplate = "object/intangible/pet/shear_mite_hue.iff",
	scale = 0.55,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(plankite_bark_biter, "plankite_bark_biter")
