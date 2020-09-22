sf_rebel_soldier = Creature:new {
	customName = "a special forces Rebel soldier",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 150,
	chanceHit = 1.25,
	damageMin = 575,
	damageMax = 800,
	baseXp = 10507,
	baseHAM = 13585,
	baseHAMmax = 16495,
	armor = 1,
	resists = {155,150,150,165,40,35,155,150,-1},
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
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(sf_rebel_soldier, "sf_rebel_soldier")