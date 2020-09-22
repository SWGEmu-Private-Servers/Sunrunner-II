hardened_imperial_executioner = Creature:new {
	customName = "a hardened Imperial executioner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 290,
	chanceHit = 20.5,
	damageMin = 1775,
	damageMax = 2575,
	baseXp = 19507,
	baseHAM = 259850,
	baseHAMmax = 321950,
	armor = 3,
	resists = {180,170,160,170,170,170,155,155,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_restuss_trooper_leader.iff"
	},
	scale = 1.15,
	lootGroups = {},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hardened_imperial_executioner, "hardened_imperial_executioner")

