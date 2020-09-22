dire_feathound = Creature:new {
	objectName = "@mob/creature_names:dire_feathound",
	socialGroup = "feathound",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 375,
	damageMax = 480,
	baseXp = 4751,
	baseHAM = 9750,
	baseHAMmax = 11750,
	armor = 1,
	resists = {150,145,145,40,170,150,145,40,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_bristley",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_slice_hound.iff"},
	hues = { 10, 12, 13, 14, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_slice_hound.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(dire_feathound, "dire_feathound")
