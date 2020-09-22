tanray = Creature:new {
	objectName = "@monster_name:tanray",
	socialGroup = "tanray",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 550,
	damageMax = 625,
	baseXp = 6000,
	baseHAM = 12500,
	baseHAMmax = 14250,
	armor = 1,
	resists = {150,160,145,190,35,165,145,40,-1},
	meatType = "meat_reptilian",
	meatAmount = 95,
	hideType = "hide_wooly",
	hideAmount = 60,
	boneType = "bone_avian",
	boneAmount = 45,
	milkType = "",
	milk = 0,
	tamingChance = 0.15,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tanray.iff"},
	hues = { 0, 1, 2, 16, 24, 29, 32, 47 },
	controlDeviceTemplate = "object/intangible/pet/tanray.iff",
	lootGroups = {},
	scale = .15,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(tanray, "tanray")
