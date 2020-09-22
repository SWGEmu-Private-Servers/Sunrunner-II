rebel_ace_trooper = Creature:new {
	customName = "a Rebel ace trooper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 250,
	chanceHit = 7.5,
	damageMin = 1155,
	damageMax = 1555,
	baseXp = 13807,
	baseHAM = 73850,
	baseHAMmax = 91950,
	armor = 2,
	resists = {150,165,155,165,40,160,150,155,-1},
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
		"object/mobile/dressed_rebel_restuss_elite_commando.iff",
		"object/mobile/dressed_rebel_restuss_commando.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_ace_trooper, "rebel_ace_trooper")

