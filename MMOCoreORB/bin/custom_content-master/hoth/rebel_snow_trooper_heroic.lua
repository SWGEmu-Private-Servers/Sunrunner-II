rebel_snow_trooper_heroic = Creature:new {
	objectName = "@mob/creature_names:rebel_snow_trooper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 96,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9150,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {45,45,0,0,30,30,80,65,-1},
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
		"object/mobile/rebel_snow_f_01.iff",
		"object/mobile/rebel_snow_m_01.iff"		
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "rifles", chance = 2000000},
				{group = "g_pistol_flechette", chance = 2000000},
				{group = "carbines", chance = 2000000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_snow_trooper_heroic, "rebel_snow_trooper_heroic")
