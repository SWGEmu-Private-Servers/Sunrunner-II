rebel_echo_officer_heroic = Creature:new {
	objectName = "@mob/creature_names:rebel_echo_officer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 181,
	chanceHit = 13,
	damageMin = 1045,
	damageMax = 1800,
	baseXp = 17178,
	baseHAM = 126000,
	baseHAMmax = 154000,
	armor = 2,
	resists = {65,75,40,40,30,30,80,65,-1},
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
				{group = "g_pistol_westar_34", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "rebel_officer_common", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_echo_officer_heroic, "rebel_echo_officer_heroic")
