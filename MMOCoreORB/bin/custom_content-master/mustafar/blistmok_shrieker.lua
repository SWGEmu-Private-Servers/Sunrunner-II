blistmok_shrieker = Creature:new {
	objectName = "@monster_name:blistmok_shrieker",
	socialGroup = "blistmok",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 520,
	damageMax = 675,
	baseXp = 5650,
	baseHAM = 11750,
	baseHAMmax = 13850,
	armor = 1,
	resists = {150,155,45,185,40,155,145,40,-1},
	meatType = "meat_reptilian",
	meatAmount = 90,
	hideType = "hide_scaley",
	hideAmount = 80,
	boneType = "bone_avian",
	boneAmount = 70,
	milkType = "",
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blistmok.iff"},
	hues = { 60, 61, 62, 63, 78, 79, 80, 81, 83 },
	controlDeviceTemplate = "object/intangible/pet/blistmok.iff",
	lootGroups = {},
	scale = 1.1,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(blistmok_shrieker, "blistmok_shrieker")
