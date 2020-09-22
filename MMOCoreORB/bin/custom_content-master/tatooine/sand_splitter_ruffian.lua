sand_splitter_ruffian = Creature:new {
	customName = "a Sand Splitter ruffian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sand_splitter",
	faction = "sand_splitter",
	level = 24,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2543,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {15,15,10,10,10,-1,-1,-1,-1},
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

	templates = {
			"object/mobile/dressed_corsair_pirate_elite_hum_f.iff",
			"object/mobile/dressed_corsair_pirate_elite_hum_m.iff",
			"object/mobile/dressed_corsair_pirate_elite_nikto_m.iff",
			"object/mobile/dressed_corsair_pirate_elite_rod_m.iff",
			"object/mobile/dressed_corsair_pirate_elite_zab_m.iff",
			"object/mobile/dressed_corsair_pirate_strong_hum_f.iff",	
			"object/mobile/dressed_corsair_pirate_strong_hum_m.iff",
			"object/mobile/dressed_corsair_pirate_strong_nikto_m.iff",	
			"object/mobile/dressed_corsair_pirate_strong_zab_m.iff"		
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "corsec_weapons", chance = 2500000},
				{group = "wearables_common", chance = 3000000},
				{group = "g_armament_necklace", chance = 500000}
			}
		}
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(sand_splitter_ruffian, "sand_splitter_ruffian")
