dead_kuat_poacher = Creature:new {
	customName = "corpse of a Kuat poacher",
	socialGroup = "poacher",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 430,
	damageMax = 560,
	baseXp = 5216,
	baseHAM = 9500,
	baseHAMmax = 11750,
	armor = 1,
	resists = {145,140,35,150,155,30,150,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/azure_cabal_drennic_scout_f_01.iff",
		"object/mobile/azure_cabal_drennic_scout_f_02.iff",
		"object/mobile/azure_cabal_drennic_scout_m_01.iff",
		"object/mobile/azure_cabal_drennic_scout_m_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "g_prowler_earring", chance = 500000},
			}
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(dead_kuat_poacher, "dead_kuat_poacher")