forgotten_acolyte = Creature:new {
	customName = "a Forgotten acolyte",
	socialGroup = "forgotten",
	faction = "",
	level = 80,
	chanceHit = 8.5,
	damageMin = 650,
	damageMax = 875,
	baseXp = 7407,
	baseHAM = 20000,
	baseHAMmax = 23250,
	armor = 1,
	resists = {165,160,145,155,155,155,170,145,-1},
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
		"object/mobile/azure_cabal_mystril_prime_01.iff",
		"object/mobile/azure_cabal_duth.iff",
		"object/mobile/azure_cabal_nikto_fanatic.iff",
		"object/mobile/azure_cabal_nikto_fanatic_02.iff",
		"object/mobile/azure_cabal_nikto_fatalist_01.iff",
		"object/mobile/azure_cabal_nikto_fatalist_02.iff",
		"object/mobile/azure_cabal_troudge_ghoul_m_01.iff",
		"object/mobile/azure_cabal_troudge_scavenger_m_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3250000},
				{group = "armor_attachments", chance = 500000},
				{group = "g_obscurity_earring", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "jabba_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 2000000},
				{group = "g_tampered_feed_mechanism", chance = 250000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_acolyte, "forgotten_acolyte")
