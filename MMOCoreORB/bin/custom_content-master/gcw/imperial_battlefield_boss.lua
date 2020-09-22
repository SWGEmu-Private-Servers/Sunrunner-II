imperial_battlefield_boss = Creature:new {
	customName = "an Imperial hero",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 270,
	chanceHit = 12.5,
	damageMin = 1575,
	damageMax = 2225,
	baseXp = 17507,
	baseHAM = 241850,
	baseHAMmax = 293950,
	armor = 3,
	resists = {170,180,175,180,180,165,165,160,-1},
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
	lootGroups = {
		{
			groups = {
                {group = "color_crystals", chance = 2500000},
                {group = "armor_attachments", chance = 1450000},
                {group = "clothing_attachments", chance = 2050000},
                {group = "weapons_all", chance = 3000000},
                {group = "g_pvp_rebel_gear", chance = 500000},
                {group = "g_pvp_weapons", chance = 500000}
            },
            lootChance = 10000000
		}
		},
	weapons = {"daunting_enforcer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(imperial_battlefield_boss, "imperial_battlefield_boss")

