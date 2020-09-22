bograider_thug = Creature:new {
	customName = "a Bog Raider thug",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bograider",
	faction = "",
	level = 80,
	chanceHit = 4,
	damageMin = 600,
	damageMax = 850,
	baseXp = 7407,
	baseHAM = 18000,
	baseHAMmax = 20000,
	armor = 1,
	resists = {155,160,140,145,150,150,170,35,-1},
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
		"object/mobile/coa_aclo_tech_hum_m1.iff",
		"object/mobile/bounty_check_fugitive_1.iff",
		"object/mobile/azure_cabal_nikto_fatalist_02.iff",
		"object/mobile/azure_cabal_nikto_fanatic.iff",
		"object/mobile/azure_cabal_troudge_scavenger_m_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 4150000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 350000},
				{group = "g_carbine_charric", chance = 1100000},
				{group = "canyon_corsair_common", chance = 3750000},
				{group = "g_power_plant_swamp", chance = 150000},
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(bograider_thug, "bograider_thug")
