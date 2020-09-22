horned_platile = Creature:new {
	objectName = "@mob/creature_names:horned_platile",
	socialGroup = "platile",
	faction = "",
	level = 48,
	chanceHit = 1,
	damageMin = 380,
	damageMax = 480,
	baseXp = 4734,
	baseHAM = 9900,
	baseHAMmax = 13400,
	armor = 1,
	resists = {160,150,150,30,140,30,25,140,-1},
	meatType = "meat_reptilian",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 260,
	boneType = "bone_mammal",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_dewback.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_dewback.iff",
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(horned_platile, "horned_platile")

