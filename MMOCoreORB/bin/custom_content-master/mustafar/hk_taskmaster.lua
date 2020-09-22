hk_taskmaster = Creature:new {
	customName = "HK-Taskmaster",
	socialGroup = "hk47",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 950,
	damageMax = 1450,
	baseXp = 24549,
	baseHAM = 185000,
	baseHAMmax = 235000,
	armor = 2,
	resists = {170,160,145,145,160,150,200,150,-1},
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
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "g_som_ion_relic_pistol", chance = 1000000},
				{group = "g_som_2h_sword_tulrus", chance = 1750000},
				{group = "g_som_sword_mustafar_bandit", chance = 2000000},
				{group = "g_som_lava_cannon", chance = 250000},
				{group = "g_super_battle_droid_loot_schem", chance = 1000000},
				{group = "wearables_rare", chance = 4000000},

			},
			lootChance = 9000000
		}

},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	defaultAttack = "attack",
	attacks = {
		{"",""},
	}
}



CreatureTemplates:addCreatureTemplate(hk_taskmaster, "hk_taskmaster")

