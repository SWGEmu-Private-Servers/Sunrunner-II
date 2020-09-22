kamurith_defiler = Creature:new {
	objectName = "@mob/creature_names:kamurith_defiler",
	socialGroup = "kamurith",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 4916,
	baseHAM = 11600,
	baseHAMmax = 13800,
	armor = 1,
	resists = {155,155,175,165,145,155,185,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 90,
	hideType = "hide_leathery",
	hideAmount = 65,
	boneType = "bone_avian",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/voritor_lizard_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"strongdisease","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(kamurith_defiler, "kamurith_defiler")