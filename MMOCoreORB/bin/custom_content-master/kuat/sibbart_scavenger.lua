sibbart_scavenger = Creature:new {
	objectName = "@mob/creature_names:sibbart_scavenger",
	socialGroup = "sibbart",
	faction = "",
	level = 30,
	chanceHit = 1,
	damageMin = 250,
	damageMax = 280,
	baseXp = 2943,
	baseHAM = 7100,
	baseHAMmax = 9000,
	armor = 0,
	resists = {30,35,10,0,0,15,5,10,-1},
	meatType = "meat_avian",
	meatAmount = 25,
	hideType = "",
	hideAmount = 0,
	boneType = "bone_avian",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/flit_hue.iff"},
	hues = { 26, 27, 28, 29, 30, 44, 47, 49 },
	controlDeviceTemplate = "object/intangible/pet/flit_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(sibbart_scavenger, "sibbart_scavenger")
