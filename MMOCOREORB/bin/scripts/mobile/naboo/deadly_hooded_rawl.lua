deadly_hooded_rawl = Creature:new {
	objectName = "@mob/creature_names:rawl_deadly_hooded",
	socialGroup = "rawl",
	faction = "",
	level = 12,
	chanceHit = 1.25,
	damageMin = 140,
	damageMax = 150,
	baseXp = 1218,
	baseHAM = 1500,
	baseHAMmax = 1700,
	armor = 0,
	resists = {135,130,120,120,135,120,170,130,-1},
	meatType = "meat_reptilian",
	meatAmount = 50,
	hideType = "hide_scaley",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 14,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fanned_rawl_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/fanned_rawl_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
		{"mildpoison","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(deadly_hooded_rawl, "deadly_hooded_rawl")