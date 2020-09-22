senior_specforce_heavy_weapons_specialist = Creature:new {
	objectName = "@mob/creature_names:senior_specforce_heavy_weapons_specialist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 45,
	chanceHit = 1.25,
	damageMin = 350,
	damageMax = 525,
	baseXp = 5603,
	baseHAM = 11750,
	baseHAMmax = 13500,
	armor = 0,
	resists = {150,155,145,160,150,145,140,140,-1},
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

	templates = {"object/mobile/dressed_rebel_second_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_zabrak_female_01.iff"},
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
	weapons = {"st_bombardier_weapons"},
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(senior_specforce_heavy_weapons_specialist, "senior_specforce_heavy_weapons_specialist")
