belligerent_hoth_hog = Creature:new {
	objectName = "@mob/creature_names:belligerent_hoth_hog",
	socialGroup = "hothhog",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 390,
	baseXp = 3255,
	baseHAM = 10650,
	baseHAMmax = 12275,
	armor = 1,
	resists = {155,145,140,30,200,150,40,35,-1},
	meatType = "meat_herbivore",
	meatAmount = 180,
	hideType = "hide_leathery",
	hideAmount = 145,
	boneType = "bone_mammal",
	boneAmount = 115,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/hoth_hog.iff"},
	controlDeviceTemplate = "object/intangible/pet/hoth_hog.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"dizzyattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(belligerent_hoth_hog, "belligerent_hoth_hog")
