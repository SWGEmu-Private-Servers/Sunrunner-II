feral_gurk = Creature:new {
	objectName = "@mob/creature_names:feral_gurk",
	socialGroup = "self",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 345,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 9300,
	baseHAMmax = 11800,
	armor = 1,
	resists = {160,150,150,170,140,140,145,150,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 275,
	boneType = "bone_mammal",
	boneAmount = 300,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurk_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/gurk_hue.iff",
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },

	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"posturedownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(feral_gurk, "feral_gurk")
