hk_besh = Creature:new {
	customName = "HK-58 Besh",
	socialGroup = "factory",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 850,
	damageMax = 1350,
	baseXp = 24549,
	baseHAM = 120000,
	baseHAMmax = 165000,
	armor = 2,
	resists = {200,170,170,170,200,200,200,170,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/som/hk77.iff"},
	scale = 1.15,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 1000000},
				{group = "g_power_plant_lava_skiff", chance = 1000000},
				{group = "g_som_sword_mustafar_bandit", chance = 1000000},
				{group = "green_light_gem", chance = 4000000}
			},
			lootchance = 10000000
		}

},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,pistoleernovice,brawlermaster,tkamaster)
}



CreatureTemplates:addCreatureTemplate(hk_besh, "hk_besh")