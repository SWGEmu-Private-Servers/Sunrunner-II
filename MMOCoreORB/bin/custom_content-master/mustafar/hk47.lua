hk47 = Creature:new {
	customName = "HK-47",
	socialGroup = "hk47",
	faction = "",
	level = 350,
	chanceHit = 95.5,
	damageMin = 1250,
	damageMax = 1900,
	baseXp = 28549,
	baseHAM = 410000,
	baseHAMmax = 485000,
	armor = 3,
	resists = {180,175,165,160,190,160,200,170,-1},
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


	templates = {"object/mobile/som/hk47.iff"},
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 500000},
				{group = "g_som_2h_sword_tulrus", chance = 1000000},
				{group = "g_som_sword_mustafar_bandit", chance = 1000000},
				{group = "g_musty_house_loot_deed", chance = 500000},
				{group = "g_lava_skiff", chance = 1000000},
				{group = "g_som_lava_cannon", chance = 250000},
				{group = "g_som_republic_flamer", chance = 250000},
				{group = "g_magnaguard_loot_schem", chance = 500000},
				{group = "g_battle_droid_loot_schem", chance = 1000000},
				{group = "g_lance_staff_magnaguard", chance = 500000},
				{group = "g_hk47_jetpack", chance = 500000},
			},
			lootChance = 10000000
		}

},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"}
		}
}



CreatureTemplates:addCreatureTemplate(hk47, "hk47")

