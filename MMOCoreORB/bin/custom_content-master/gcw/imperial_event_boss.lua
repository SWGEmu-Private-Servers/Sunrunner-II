imperial_event_boss = Creature:new {
	customName = "a prime Imperial Surface marshall",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
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
		"object/mobile/galactic_marine_hum_m.iff"
	},
	scale = 1.1,
	lootGroups = {},
	weapons = {"oneh_stun_baton"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(imperial_event_boss, "imperial_event_boss")