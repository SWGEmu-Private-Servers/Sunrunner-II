daunting_imperial_enforcer = Creature:new {
	customName = "a daunting Imperial enforcer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 270,
	chanceHit = 12.5,
	damageMin = 1575,
	damageMax = 2225,
	baseXp = 17507,
	baseHAM = 141850,
	baseHAMmax = 193950,
	armor = 2,
	resists = {160,170,165,170,170,155,155,150,-1},
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
		"object/mobile/galactic_marine_hum_m.iff"
	},
	scale = 1.1,
	lootGroups = {},
	weapons = {"daunting_enforcer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(daunting_imperial_enforcer, "daunting_imperial_enforcer")

