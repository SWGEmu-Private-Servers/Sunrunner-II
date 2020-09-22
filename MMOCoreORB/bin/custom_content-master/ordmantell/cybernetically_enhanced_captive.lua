cybernetically_enhanced_captive = Creature:new {
	customName = "Cybernetically Enhanced Captive",
	socialGroup = "cybernetic",
	faction = "",
	level = 75,
	chanceHit = 2.5,
	damageMin = 525,
	damageMax = 750,
	baseXp = 7207,
	baseHAM = 13500,
	baseHAMmax = 16500,
	armor = 1,
	resists = {145,155,35,25,150,160,140,140,-1},
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
		"object/mobile/dressed_bh_female_human_01.iff",
		"object/mobile/dressed_bh_female_human_02.iff",
		"object/mobile/dressed_bh_male_human_02.iff",
		"object/mobile/dressed_bh_male_mon_02.iff",
		"object/mobile/dressed_cardas_guard_f_05.iff",
		"object/mobile/dressed_dark_jedi_master_female_bith_01.iff",
		"object/mobile/dressed_murmur_admin_security.iff",
		"object/mobile/dressed_murmur_research_security.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3300000},
				{group = "armor_attachments", chance = 1350000},
				{group = "clothing_attachments", chance = 1350000},
				{group = "g_cybernetic_research_layer", chance = 1000000},
				{group = "borvos_common", chance = 3000000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,swordsmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(cybernetically_enhanced_captive, "cybernetically_enhanced_captive")

