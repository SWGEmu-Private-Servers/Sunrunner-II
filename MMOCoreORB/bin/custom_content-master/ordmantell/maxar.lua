maxar = Creature:new {
	customName = "Maxar (an anxious explorer)",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 34,
	chanceHit = 0.410000,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3279,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_murmur_exec1.iff"
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "Maxargossiptemplate",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(maxar, "maxar")