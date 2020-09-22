-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------
-- used name generator.. don't laugh too much...

tortured_soul = Creature:new {
	customName = "Tortured Soul",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 0.64,
	damageMin = 80,
	damageMax = 135,
	baseXp = 62,
	baseHAM = 11300,
	baseHAMmax = 11800,
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
	scale = 1.1,
	templates = {"object/mobile/huff_darklighter.iff"},
	outfit = "nufscheheit_outfit",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "tortured_soul_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(tortured_soul, "tortured_soul")
