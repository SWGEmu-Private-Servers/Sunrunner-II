lesser_acklay = Creature:new {
	objectName = "@mob/creature_names:lesser_acklay",
	socialGroup = "acklay",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 450,
	damageMax = 690,
	baseXp = 6747,
	baseHAM = 14500,
	baseHAMmax = 18300,
	armor = 1,
	resists = {160,165,160,165,190,160,190,155,-1},
	meatType = "meat_insect",
	meatAmount = 200,
	hideType = "hide_scaley",
	hideAmount = 250,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.08,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_acklay.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 , 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
	controlDeviceTemplate = "object/intangible/beast/bm_acklay.iff",
	scale = 0.78,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(lesser_acklay, "lesser_acklay")
