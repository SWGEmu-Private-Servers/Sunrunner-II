ig_88_rocket = Creature:new {
	customName = "IG-88",
	socialGroup = "ig88",
	faction = "",
	level = 300,
	chanceHit = 90.5,
	damageMin = 1500,
	damageMax = 2600,
	baseXp = 28549,
	baseHAM = 440000,
	baseHAMmax = 520000,
	armor = 3,
	resists = {190,190,190,180,200,180,200,200,-1},
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
	scale = 1.5,

	templates = {
		"object/mobile/ig_88.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "g_pistol_intimidator", chance = 1000000},
				{group = "g_jinkins_j1_rifle", chance = 1000000},
				{group = "g_blasterfist", chance = 1000000},
				{group = "g_carbine_czerka_dart", chance = 1000000},
				{group = "g_rifle_westar_m5", chance = 2000000},
				{group = "g_desert_skiff", chance = 1000000},
				{group = "g_8d8_loot_schem", chance = 2000000},
				{group = "g_ig88_loot_schem", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_pistol_intimidator", chance = 1000000},
				{group = "g_jinkins_j1_rifle", chance = 1000000},
				{group = "g_blasterfist", chance = 1000000},
				{group = "g_carbine_czerka_dart", chance = 1000000},
				{group = "g_rifle_westar_m5", chance = 2000000},
				{group = "g_desert_skiff", chance = 1000000},
				{group = "g_8d8_loot_schem", chance = 2000000},
				{group = "g_ig88_loot_schem", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_pistol_intimidator", chance = 1000000},
				{group = "g_jinkins_j1_rifle", chance = 1000000},
				{group = "g_blasterfist", chance = 1000000},
				{group = "g_carbine_czerka_dart", chance = 1000000},
				{group = "g_rifle_westar_m5", chance = 2000000},
				{group = "g_desert_skiff", chance = 1000000},
				{group = "g_8d8_loot_schem", chance = 2000000},
				{group = "g_ig88_loot_schem", chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(ig_88_rocket, "ig_88_rocket")
