dressed_chief_kerritamba = Creature:new {
	customName = "Chief Kerritamba",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
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
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_chief_kerritamba.iff"},
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "chiefKerritambaConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(dressed_chief_kerritamba, "dressed_chief_kerritamba")
