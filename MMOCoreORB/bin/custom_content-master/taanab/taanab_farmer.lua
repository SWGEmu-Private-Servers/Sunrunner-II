taanab_farmer = Creature:new {
	customName = "a hardened Taanab farmer",
	socialGroup = "farmer",
	faction = "farmer",
	level = 80,
	chanceHit = 3.5,
	damageMin = 535,
	damageMax = 720,
	baseXp = 7407,
	baseHAM = 13500,
	baseHAMmax = 16000,
	armor = 1,
	resists = {140,135,155,145,160,160,135,135,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/beginner_brawler_client_2.iff",
		"object/mobile/beginner_brawler_client_3.iff",
		"object/mobile/cb_jark.iff",
		"object/mobile/dressed_talus_omkoo.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "g_harvester_earring", chance = 500000},
				{group = "kobola_common", chance = 2250000},
				{group = "hutt_exp_common", chance = 2250000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,riflemanmaster,carbineermaster,pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(taanab_farmer, "taanab_farmer")
