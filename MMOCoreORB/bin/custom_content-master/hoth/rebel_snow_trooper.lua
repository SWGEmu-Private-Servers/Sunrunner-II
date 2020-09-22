rebel_snow_trooper = Creature:new {
	objectName = "@mob/creature_names:rebel_snow_trooper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 65,
	chanceHit = 0.55,
	damageMin = 330,
	damageMax = 500,
	baseXp = 5219,
	baseHAM = 20500,
	baseHAMmax = 24500,
	armor = 1,
	resists = {25,25,25,25,25,25,55,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
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

CreatureTemplates:addCreatureTemplate(rebel_snow_trooper, "rebel_snow_trooper")
