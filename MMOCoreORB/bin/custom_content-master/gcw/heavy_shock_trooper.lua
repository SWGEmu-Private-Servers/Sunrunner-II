heavy_shock_trooper = Creature:new {
	customName = "a heavy shock trooper",
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 7.5,
	damageMin = 1175,
	damageMax = 1575,
	baseXp = 13807,
	baseHAM = 75850,
	baseHAMmax = 93950,
	armor = 2,
	resists = {165,155,165,165,155,170,40,155,-1},
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
		"object/mobile/shocktrooper.iff"
	},
	scale = 1.05,
	lootGroups = {},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(heavy_shock_trooper, "heavy_shock_trooper")
