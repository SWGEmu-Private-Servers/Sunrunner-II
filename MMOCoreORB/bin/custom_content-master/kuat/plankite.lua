plankite = Creature:new {
	objectName = "@mob/creature_names:plankite",
	socialGroup = "plankite",
	faction = "",
	level = 18,
	chanceHit = 1,
	damageMin = 180,
	damageMax = 200,
	baseXp = 1257,
	baseHAM = 2400,
	baseHAMmax = 3500,
	armor = 0,
	resists = {10,5,5,-1,0,0,5,10,-1},
	meatType = "meat_insect",
	meatAmount = 20,
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
	hues = { 24, 25, 26, 27, 28, 29 },
	controlDeviceTemplate = "object/intangible/pet/shear_mite_hue.iff",
	scale = 0.50,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(plankite, "plankite")
