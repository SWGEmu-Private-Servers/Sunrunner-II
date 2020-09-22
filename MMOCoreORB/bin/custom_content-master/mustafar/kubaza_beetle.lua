kubaza_beetle = Creature:new {
	objectName = "@monster_name:kubaza_beetle",
	socialGroup = "kubaza",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 510,
	damageMax = 680,
	baseXp = 5000,
	baseHAM = 11200,
	baseHAMmax = 12875,
	armor = 1,
	resists = {150,160,155,180,35,170,160,40,-1},
	meatType = "meat_insect",
	meatAmount = 85,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/kubaza_beetle.iff"},
	hues = { 0, 1, 8, 10, 14, 32, 33, 34, 35 },
	controlDeviceTemplate = "object/intangible/pet/kubaza_beetle.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(kubaza_beetle, "kubaza_beetle")
