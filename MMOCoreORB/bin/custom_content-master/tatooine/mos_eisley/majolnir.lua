majolnir = Creature:new {
	customName = "Majolnir",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 0.64,
	damageMin = 80,
	damageMax = 135,
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
	optionsBitmask = INVULNERABLE + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/majolnir.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "majolnir_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(majolnir, "majolnir")
