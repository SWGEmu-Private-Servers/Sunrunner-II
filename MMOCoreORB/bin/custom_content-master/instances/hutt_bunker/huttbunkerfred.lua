huttbunkerfred = Creature:new {
	customName = "Zamis (Hutt Research Bunker Security)",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 70,
	chanceHit = 0.27,
	damageMin = 550,
	damageMax = 800,
	baseXp = 235,
	baseHAM = 16000,
	baseHAMmax = 19000,
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_hutt_expedition_force_member.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "huttbunkerfred_template",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(huttbunkerfred, "huttbunkerfred")
