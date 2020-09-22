hooligan = Creature:new {
	customName = "a hooligan",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "hooligan",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 410,
	damageMax = 710,
	baseXp = 5807,
	baseHAM = 10500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,155,145,35,30,140,30,145,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
		"object/mobile/dressed_goon_twk_male_01.iff",
		"object/mobile/dressed_robber_twk_female_01.iff",
		"object/mobile/dressed_goon_twk_female_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3100000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 400000},
				{group = "borvos_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 3000000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(hooligan, "hooligan")
