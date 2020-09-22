prime_specforce_agent = Creature:new {
	customName = "a prime SpecForce agent",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 310,
	chanceHit = 30.5,
	damageMin = 2375,
	damageMax = 3075,
	baseXp = 21507,
	baseHAM = 339850,
	baseHAMmax = 398950,
	armor = 3,
	resists = {190,190,170,170,170,165,165,160,-1},
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
		"object/mobile/rebel_specforce_hum_m.iff"
	},
	scale = 1.1,
	lootGroups = {},
	weapons = {"specforce_agent_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(prime_specforce_agent, "prime_specforce_agent")

