rodian_hunter = Creature:new {
	objectName = "@mob/creature_names:rodian_hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,	
	socialGroup = "rodian",
	pvpFaction = "",
	faction = "",
	level = 180,
	chanceHit = 12.5,
	damageMin = 380,
	damageMax = 850,
	baseXp = 11794,
	baseHAM = 92700,
	baseHAMmax = 95800,
	armor = 2,
	resists = {75,10,70,80,45,45,80,70,20},
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
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_blood_razor_pirate_guard_rod_m.iff",		
		"object/mobile/dressed_blood_razor_pirate_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_scout_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_rod_m.iff"},

	
	scale = 1.0,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4200000},
				{group = "g_brisk_necklace", chance = 500000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "color_crystals", chance = 3000000},
				{group = "tailor_components", chance = 500000},
				{group = "g_pistol_intimidator", chance = 100000},
				{group = "g_blasterfist", chance = 100000},
				{group = "g_carbine_czerka_dart", chance = 100000},
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,tkamaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rodian_hunter, "rodian_hunter")
