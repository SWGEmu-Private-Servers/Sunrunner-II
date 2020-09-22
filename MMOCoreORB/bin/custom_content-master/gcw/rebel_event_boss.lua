rebel_event_boss = Creature:new {
	customName = "a prime Rebel Surface marshall",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 320,
	chanceHit = 90.5,
	damageMin = 2375,
	damageMax = 3075,
	baseXp = 21507,
	baseHAM = 590850,
	baseHAMmax = 685950,
	armor = 3,
	resists = {195,195,190,195,195,195,190,180,-1},
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
	scale = 1.1,
	lootGroups = {},
	weapons = {"specforce_agent_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_event_boss, "rebel_event_boss")