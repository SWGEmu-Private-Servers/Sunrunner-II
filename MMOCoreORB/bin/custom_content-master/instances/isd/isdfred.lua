isdfred = Creature:new {
	customName = "Lieutenant Hunter (Star Destroyer Heroic)",
	socialGroup = "rebel",
	faction = "rebel",
	level = 180,
	chanceHit = 9.0,
	damageMin = 1045,
	damageMax = 1800,
	baseXp = 18000,
	baseHAM = 119000,
	baseHAMmax = 165000,
	armor = 2,
	resists = {140,30,30,150,150,150,150,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_snow_echo_base_f_01.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_04.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_01.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_03.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_04.iff"
		
	},
	lootGroups = {		
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "isdfred_template",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(isdfred, "isdfred")
