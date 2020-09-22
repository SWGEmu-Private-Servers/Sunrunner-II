hawkbat = Creature:new {
	objectName = "@mob/creature_names:hawkbat",
	socialGroup = "hawkbat",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 330,
	damageMax = 400,
	baseXp = 3915,
	baseHAM = 9000,
	baseHAMmax = 11500,
	armor = 1,
	resists = {150,155,40,150,145,145,165,30,-1},
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
	--hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_hawk_bat.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"dizzyattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(hawkbat, "hawkbat")
