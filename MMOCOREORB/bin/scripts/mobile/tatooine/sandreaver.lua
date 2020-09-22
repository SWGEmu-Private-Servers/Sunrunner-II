sandreaver = Creature:new {
	objectName = "@mob/creature_names:dewback_sandreaver",
	socialGroup = "dewback",
	faction = "",
	level = 26,
	chanceHit = 1.25,
	damageMin = 310,
	damageMax = 330,
	baseXp = 5237,
	baseHAM = 8700,
	baseHAMmax = 10500,
	armor = 1,
	resists = {130,130,140,160,120,120,130,140,-1},
	meatType = "meat_reptilian",
	meatAmount = 680,
	hideType = "hide_leathery",
	hideAmount = 520,
	boneType = "bone_mammal",
	boneAmount = 370,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dewback_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/dewback_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(sandreaver, "sandreaver")