hardened_rebel_commander = Creature:new {
	customName = "a hardened Rebel commander",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 290,
	chanceHit = 20.5,
	damageMin = 1775,
	damageMax = 2575,
	baseXp = 19507,
	baseHAM = 259850,
	baseHAMmax = 321950,
	armor = 3,
	resists = {180,165,160,170,170,150,190,150,-1},
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
		"object/mobile/storyteller_rebel_commando_boss.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hardened_rebel_commander, "hardened_rebel_commander")

