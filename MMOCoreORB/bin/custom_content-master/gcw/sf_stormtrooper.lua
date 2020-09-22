sf_stormtrooper = Creature:new {
	customName = "a special forces Stormtrooper",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 150,
	chanceHit = 1.25,
	damageMin = 575,
	damageMax = 800,
	baseXp = 10507,
	baseHAM = 13585,
	baseHAMmax = 16495,
	armor = 1,
	resists = {155,150,150,40,165,35,160,150,-1},
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
		"object/mobile/dressed_stormtrooper_black_gold.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(sf_stormtrooper, "sf_stormtrooper")