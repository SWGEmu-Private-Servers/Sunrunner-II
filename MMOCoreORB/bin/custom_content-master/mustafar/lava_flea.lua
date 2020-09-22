lava_flea = Creature:new {
	objectName = "@monster_name:lava_flea",
	socialGroup = "lavaflea",
	faction = "",
	level = 25,
	chanceHit = 1,
	damageMin = 180,
	damageMax = 220,
	baseXp = 2500,
	baseHAM = 5200,
	baseHAMmax = 5400,
	armor = 0,
	resists = {125,125,-1,165,-1,-1,10,5,-1},
	meatType = "meat_insect",
	meatAmount = 45,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/lava_flea.iff"},
	hues = { 0, 1, 15, 16, 23, 24, 31, 32, 47 },
	controlDeviceTemplate = "object/intangible/pet/lava_flea.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(lava_flea, "lava_flea")
