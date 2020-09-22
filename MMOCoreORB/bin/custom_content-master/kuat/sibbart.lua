sibbart = Creature:new {
	objectName = "@mob/creature_names:sibbart",
	socialGroup = "sibbart",
	faction = "",
	level = 25,
	chanceHit = 1,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2543,
	baseHAM = 6500,
	baseHAMmax = 8200,
	armor = 0,
	resists = {25,30,0,0,0,10,-1,-1,-1},
	meatType = "meat_avian",
	meatAmount = 15,
	hideType = "",
	hideAmount = 0,
	boneType = "bone_avian",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/flit_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 23, 25 },
	controlDeviceTemplate = "object/intangible/pet/flit_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(sibbart, "sibbart")

