heavy_shock_trooper_demolitionist = Creature:new {
	customName = "a heavy shock trooper demolitionist",
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 15.5,
	damageMin = 1475,
	damageMax = 1975,
	baseXp = 17507,
	baseHAM = 125850,
	baseHAMmax = 174950,
	armor = 2,
	resists = {165,160,165,170,160,170,40,160,-1},
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
		"object/mobile/shocktrooper_blue.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"demolitionist_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,brawlermaster,marksmanmaster,tkamaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(heavy_shock_trooper_demolitionist, "heavy_shock_trooper_demolitionist")

