forgotten_attendant = Creature:new {
	customName = "a Forgotten attendant",
	socialGroup = "forgotten",
	faction = "",
	level = 92,
	chanceHit = 12.5,
	damageMin = 1350,
	damageMax = 1875,
	baseXp = 8615,
	baseHAM = 24000,
	baseHAMmax = 27250,
	armor = 1,
	resists = {165,165,150,155,160,155,170,150,-1},
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
		"object/mobile/azure_cabal_sb_rogue_01.iff",
		"object/mobile/azure_cabal_sb_rogue_02.iff",
		"object/mobile/azure_cabal_sb_rogue_03.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "g_obscurity_earring", chance = 500000},
				{group = "clothing_attachments", chance = 350000},
				{group = "desert_demon_common", chance = 3000000},
				{group = "mauler_common", chance = 2400000},
				{group = "g_tampered_feed_mechanism", chance = 250000}
			}
		}
	},
	weapons = {"janta_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_attendant, "forgotten_attendant")

