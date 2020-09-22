forgotten_sentry = Creature:new {
	customName = "a Forgotten sentry",
	socialGroup = "forgotten",
	faction = "",
	level = 100,
	chanceHit = 12.5,
	damageMin = 1050,
	damageMax = 1375,
	baseXp = 9215,
	baseHAM = 31500,
	baseHAMmax = 37850,
	armor = 1,
	resists = {165,165,155,155,160,160,170,150,-1},
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
	scale = 1.1,

	templates = {
		"object/mobile/azure_cabal_frosch_guard_m_01.iff",
		"object/mobile/azure_cabal_frosch_guard_m_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "g_obscurity_earring", chance = 500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "valarian_common", chance = 2000000},
				{group = "beldonnas_common", chance = 2250000},
				{group = "g_tampered_feed_mechanism", chance = 250000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_sentry, "forgotten_sentry")

