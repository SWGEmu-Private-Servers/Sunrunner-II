dressed_entha_kandela = Creature:new {
	customName = "Entha Kandela",
	socialGroup = "townsperson",
	faction = "",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_entha_kandela.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "entha_kandela_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(dressed_entha_kandela, "dressed_entha_kandela")

