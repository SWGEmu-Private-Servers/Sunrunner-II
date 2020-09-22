mawrat = Creature:new {
	objectName = "@mob/creature_names:mawrat",
	socialGroup = "mawrat",
	faction = "",
	level = 11,
	chanceHit = 0.75,
	damageMin = 120,
	damageMax = 130,
	baseXp = 356,
	baseHAM = 1000,
	baseHAMmax = 1250,
	armor = 0,
	resists = {5,5,0,0,0,0,5,-1,-1},
	meatType = "meat_wild",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 25,
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
	
	templates = {"object/mobile/quenker_hue.iff"},
	hues = { 16, 32, 33, 34, 36, 39, 40, 23 },
	controlDeviceTemplate = "object/intangible/pet/quenker_hue.iff",
	scale = 0.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"stunattack",""},
	}
}

CreatureTemplates:addCreatureTemplate(mawrat, "mawrat")

