gluttonous_quagfly = Creature:new {
	objectName = "@mob/creature_names:gluttonous_quagfly",
	socialGroup = "quagfly",
	faction = "",
	level = 38,
	chanceHit = 1,
	damageMin = 310,
	damageMax = 410,
	baseXp = 3109,
	baseHAM = 7250,
	baseHAMmax = 9850,
	armor = 0,
	resists = {145,150,35,30,160,140,175,35,-1},
	meatType = "meat_insect",
	meatAmount = 140,
	hideType = "hide_scaley",
	hideAmount = 80,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_chuba_fly.iff"},
	hues = { 10, 11, 12, 13, 14, 15, 16, 17, 18 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_chuba_fly.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"dizzyattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(gluttonous_quagfly, "gluttonous_quagfly")
