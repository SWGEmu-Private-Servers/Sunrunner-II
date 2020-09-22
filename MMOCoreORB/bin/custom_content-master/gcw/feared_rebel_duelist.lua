feared_rebel_duelist = Creature:new {
	customName = "a feared Rebel duelist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 270,
	chanceHit = 10.5,
	damageMin = 1575,
	damageMax = 2225,
	baseXp = 17507,
	baseHAM = 145850,
	baseHAMmax = 194950,
	armor = 2,
	resists = {170,155,170,160,160,155,145,160,-1},
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
		"object/mobile/rebel_desert_soldier.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"feared_duelist_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(feared_rebel_duelist, "feared_rebel_duelist")

