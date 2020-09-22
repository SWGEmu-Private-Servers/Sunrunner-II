tanray_lavarunner = Creature:new {
	objectName = "@monster_name:tanray_lavarunner",
	socialGroup = "tanray",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 610,
	damageMax = 780,
	baseXp = 6000,
	baseHAM = 14000,
	baseHAMmax = 17250,
	armor = 1,
	resists = {160,160,155,190,145,165,160,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 215,
	hideType = "hide_wooly",
	hideAmount = 120,
	boneType = "bone_avian",
	boneAmount = 135,
	milkType = "",
	milk = 0,
	tamingChance = 0.03,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tanray.iff"},
	hues = { 55, 56, 61, 62, 63, 64, 74, 80, 81, 82 },
	controlDeviceTemplate = "object/intangible/pet/tanray.iff",
	lootGroups = {},
	scale = 0.2,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(tanray_lavarunner, "tanray_lavarunner")
