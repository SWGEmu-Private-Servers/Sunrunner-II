rebel_battlefield_boss = Creature:new {
	customName = "a Rebel hero",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 270,
	chanceHit = 12.5,
	damageMin = 1575,
	damageMax = 2225,
	baseXp = 17507,
	baseHAM = 241850,
	baseHAMmax = 293950,
	armor = 3,
	resists = {160,175,165,175,50,170,160,165,-1},
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
		"object/mobile/dressed_rebel_restuss_elite_commando.iff",
		"object/mobile/dressed_rebel_restuss_commando.iff"
	},
	scale = 1.05,
	lootGroups = {
	{
		groups = {
			{group = "color_crystals", chance = 2500000},
			{group = "armor_attachments", chance = 1450000},
			{group = "clothing_attachments", chance = 2050000},
			{group = "weapons_all", chance = 3000000},
			{group = "g_pvp_imperial_gear", chance = 500000},
			{group = "g_pvp_weapons", chance = 500000}
		},
		lootChance = 10000000
	}
	},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,carbineermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_battlefield_boss, "rebel_battlefield_boss")

