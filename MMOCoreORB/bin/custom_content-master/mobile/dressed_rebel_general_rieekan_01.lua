dressed_rebel_general_rieekan_01 = Creature:new {
	customName = "General Rieekan",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "rebel",
	faction = "rebel",
	level = 300,
	chanceHit = 32.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {85,25,25,85,85,85,85,85,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_general_rieekan_01.iff"},
	lootGroups = {
	 	{
	        groups = {
				{group = "g_carbine_alliance_needler", chance = 2500000},
				{group = "g_pistol_alliance_disruptor", chance = 2500000},
				{group = "g_rifle_alliance_gauss_generic", chance = 1000000},
				{group = "g_lance_shock", chance = 2000000},
				{group = "wearables_scarce", chance = 1000000},
				{group = "wearables_rare", chance = 1000000},

			},
			lootChance = 10000000
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(dressed_rebel_general_rieekan_01, "dressed_rebel_general_rieekan_01")

