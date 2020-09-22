senior_specforce_pathfinder = Creature:new {
	objectName = "@mob/creature_names:senior_specforce_pathfinder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 30,
	chanceHit = 1,
	damageMin = 215,
	damageMax = 335,
	baseXp = 2703,
	baseHAM = 7100,
	baseHAMmax = 9100,
	armor = 0,
	resists = {35,35,15,140,30,20,140,15,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_specforce_pathfinder_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_zabrak_female_fat_01.iff",},
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
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_weapons_medium"},
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(senior_specforce_pathfinder, "senior_specforce_pathfinder")
