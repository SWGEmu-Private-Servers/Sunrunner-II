stocky_hawkbat = Creature:new {
	objectName = "@mob/creature_names:stocky_hawkbat",
	socialGroup = "hawkbat",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 385,
	damageMax = 520,
	baseXp = 4915,
	baseHAM = 10150,
	baseHAMmax = 12500,
	armor = 1,
	resists = {160,155,40,155,165,145,170,40,-1},
	meatType = "meat_herbivore",
	meatAmount = 25,
	hideType = "hide_bristley",
	hideAmount = 25,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_hawk_bat.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_hawk_bat.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(stocky_hawkbat, "stocky_hawkbat")

