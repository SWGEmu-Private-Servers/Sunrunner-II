morrakai = Creature:new {
	customName = "Morrakai (a thief of ancient relics)",
	socialGroup = "oldrepublic",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1975,
	damageMax = 2825,
	baseXp = 24549,
	baseHAM = 225000,
	baseHAMmax = 285000,
	armor = 2,
	resists = {175,175,170,190,165,175,175,165,-1},
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
	scale = 1.15,

	templates = {"object/mobile/som/som_dark_jedi_minion_1.iff"},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 3000000},
				{group = "g_orf_treasure_hunter", chance = 1500000},
				{group = "g_power_plant_lava_skiff", chance = 1000000},
				{group = "g_som_2h_sword_tulrus", chance = 2250000},
				{group = "g_som_sword_mustafar_bandit", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(morrakai, "morrakai")