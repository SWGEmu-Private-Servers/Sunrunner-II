blistmok = Creature:new {
	objectName = "@monster_name:blistmok",
	socialGroup = "blistmok",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 550,
	baseXp = 5000,
	baseHAM = 10500,
	baseHAMmax = 12550,
	armor = 1,
	resists = {145,150,40,180,35,155,145,35,-1},
	meatType = "meat_reptilian",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milkType = "",
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blistmok.iff"},
	hues = { 0, 1, 2, 3, 16, 23, 24, 25, 70 },
	controlDeviceTemplate = "object/intangible/pet/blistmok.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(blistmok, "blistmok")
