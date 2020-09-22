senior_specforce_infiltrator = Creature:new {
	objectName = "@mob/creature_names:senior_specforce_infiltrator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 35,
	chanceHit = 1,
	damageMin = 220,
	damageMax = 340,
	baseXp = 3203,
	baseHAM = 7900,
	baseHAMmax = 9700,
	armor = 0,
	resists = {35,35,20,15,20,30,20,20,-1},
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

	templates = {"object/mobile/dressed_rebel_specforce_guerilla_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_guerilla_moncal_male_01.iff",
		"object/mobile/dressed_rebel_specforce_guerrilla_human_female_01.iff",
		"object/mobile/dressed_rebel_specforce_guerrilla_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_guerrilla_rodian_male_01.iff",
		"object/mobile/dressed_rebel_specforce_guerrilla_zabrak_female_01.iff"
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
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_weapons_medium"},
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(senior_specforce_infiltrator, "senior_specforce_infiltrator")
