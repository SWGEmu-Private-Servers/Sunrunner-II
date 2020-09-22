elder_pulverizer = Creature:new {
	objectName = "@mob/creature_names:bolle_bol_elder_pulverizer",
	socialGroup = "bol",
	faction = "",
	level = 30,
	chanceHit = 1.25,
	damageMin = 340,
	damageMax = 370,
	baseXp = 6010,
	baseHAM = 8800,
	baseHAMmax = 10600,
	armor = 1,
	resists = {145,155,165,145,145,160,145,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 900,
	hideType = "hide_leathery",
	hideAmount = 600,
	boneType = "bone_mammal",
	boneAmount = 360,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bolle_bol_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bolle_bol_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"knockdownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(elder_pulverizer, "elder_pulverizer")