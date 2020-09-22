devastating_rebel_demolitionist = Creature:new {
	customName = "a devastating Rebel demolitionist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 270,
	chanceHit = 15.5,
	damageMin = 1555,
	damageMax = 2025,
	baseXp = 19507,
	baseHAM = 190850,
	baseHAMmax = 231950,
	armor = 3,
	resists = {160,175,170,200,160,155,200,150,-1},
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
		"object/mobile/rebel_mandalorian.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"heavy_lava_cannon"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomaster,marksmanmaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(devastating_rebel_demolitionist, "devastating_rebel_demolitionist")

