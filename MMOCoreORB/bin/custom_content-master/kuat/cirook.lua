cirook = Creature:new {
	objectName = "@mob/creature_names:cirook",
	socialGroup = "cirook",
	faction = "",
	level = 49,
	chanceHit = 1,
	damageMin = 390,
	damageMax = 520,
	baseXp = 4743,
	baseHAM = 10500,
	baseHAMmax = 13000,
	armor = 1,
	resists = {160,145,140,35,35,150,145,30,-1},
	meatType = "meat_wild",
	meatAmount = 50,
	hideType = "hide_wooly",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mamien_hue.iff"},
	hues = { 32, 33, 37, 39, 45 },
	controlDeviceTemplate = "object/intangible/pet/mamien_hue.iff",
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=25"},
		{"dizzyattack","stateAccuracyBonus=25"},
	}
}

CreatureTemplates:addCreatureTemplate(cirook, "cirook")

