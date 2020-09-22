death_watch_overlord = Creature:new {
	objectName = "",
	customName = "Drartih Oure (a Death Watch Overlord)",
	socialGroup = "death_watch",
	faction = "",
	level = 291,
	chanceHit = 19,
	damageMin = 1845,
	damageMax = 2800,
	baseXp = 20948,
	baseHAM = 350000,
	baseHAMmax = 350000,
	armor = 3,
	resists = {80,80,90,80,45,45,100,70,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance = 2000000},
				{group = "g_pistol_mandalorian", chance = 1750000},
				{group = "g_carbine_mandalorian", chance = 1000000},
				{group = "g_rifle_mandalorian", chance = 2000000},
				{group = "g_sword_mandalorian", chance = 1000000},
				{group = "g_heavy_mandalorian", chance = 1000000},
				{group = "g_decorative_mandalorian_skull_banner", chance = 1000000},			
				{group = "g_merr_sonn_jetpack", chance = 250000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  500000},
				{group = "death_watch_bunker_overlord_quest", chance  = 9500000}
			},
			lootChance = 5000000
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_overlord, "death_watch_overlord")
