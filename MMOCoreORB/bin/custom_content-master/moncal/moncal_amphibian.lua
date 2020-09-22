moncal_amphibian = Creature:new {
	objectName = "@monster_name:moncal_amphibian",
	socialGroup = "chuba",
	faction = "",
	level = 5,
	chanceHit = 0.25,
	damageMin = 45,
	damageMax = 50,
	baseXp = 85,
	baseHAM = 135,
	baseHAMmax = 165,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/chuba_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/chuba_hue.iff",
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(moncal_amphibian, "moncal_amphibian")
