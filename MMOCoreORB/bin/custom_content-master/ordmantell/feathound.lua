feathound = Creature:new {
	objectName = "@mob/creature_names:feathound",
	socialGroup = "feathound",
	faction = "",
	level = 35,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 380,
	baseXp = 3551,
	baseHAM = 8600,
	baseHAMmax = 10600,
	armor = 1,
	resists = {140,140,30,30,160,150,140,35,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_wooly",
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
	hues = { 0, 1, 3, 4, 5, 7, 8, 9 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_slice_hound.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(feathound, "feathound")
