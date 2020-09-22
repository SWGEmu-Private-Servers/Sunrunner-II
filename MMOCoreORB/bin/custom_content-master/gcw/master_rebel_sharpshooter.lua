master_rebel_sharpshooter = Creature:new {
	customName = "a master Rebel sharpshooter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 250,
	chanceHit = 10.5,
	damageMin = 1425,
	damageMax = 1925,
	baseXp = 17507,
	baseHAM = 110850,
	baseHAMmax = 158950,
	armor = 2,
	resists = {155,170,155,165,155,165,40,160,-1},
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
		"object/mobile/rebel_mandalorian_grey.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"master_sharpshooter_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,brawlermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(master_rebel_sharpshooter, "master_rebel_sharpshooter")

