ragtag_bruiser = Creature:new {
	customName = "a ragtag bruiser",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "ragtag",
	faction = "thug",
	level = 14,
	chanceHit = 0.75,
	damageMin = 100,
	damageMax = 110,
	baseXp = 632,
	baseHAM = 1325,
	baseHAMmax = 1675,
	armor = 0,
	resists = {5,5,5,0,0,-1,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ravager_human_female_01.iff",
		"object/mobile/dressed_ravager_human_male_01.iff",
		"object/mobile/dressed_raider_trandoshan_female_01.iff",
		"object/mobile/dressed_raider_trandoshan_male_01.iff",
		"object/mobile/dressed_ruffian_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
		"object/mobile/dressed_villain_trandoshan_female_01.iff",
		"object/mobile/dressed_villain_trandoshan_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_female_02.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_male_01.iff"},

	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "g_obstructor_necklace", chance = 500000},
				{group = "wearables_common", chance = 3000000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "power_crystals", chance = 500000},
				{group = "tailor_components", chance = 1000000}
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(ragtag_bruiser, "ragtag_bruiser")