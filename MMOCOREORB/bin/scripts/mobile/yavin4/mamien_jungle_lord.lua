mamien_jungle_lord = Creature:new {
	objectName = "@mob/creature_names:mamien_junglelord",
	socialGroup = "mamien",
	faction = "",
	level = 24,
	chanceHit = 1.25,
	damageMin = 200,
	damageMax = 250,
	baseXp = 5043,
	baseHAM = 7000,
	baseHAMmax = 8400,
	armor = 0,
	resists = {140,130,160,130,150,130,130,140,-1},
	meatType = "meat_wild",
	meatAmount = 36,
	hideType = "hide_wooly",
	hideAmount = 360,
	boneType = "bone_mammal",
	boneAmount = 36,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mamien_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/mamien_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mamien_jungle_lord, "mamien_jungle_lord")