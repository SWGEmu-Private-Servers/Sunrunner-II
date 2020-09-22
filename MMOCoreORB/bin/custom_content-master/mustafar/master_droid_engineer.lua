master_droid_engineer = Creature:new {
	customName = "The Master Droid Engineer",
	socialGroup = "factory",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1450,
	damageMax = 1975,
	baseXp = 24549,
	baseHAM = 235000,
	baseHAMmax = 275000,
	armor = 2,
	resists = {180,180,170,165,175,170,185,170,-1},
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


	templates = {"object/mobile/ev_9d9.iff"},
	scale = 1.3,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 1000000},
				{group = "g_som_2h_sword_tulrus", chance = 1000000},
				{group = "g_som_sword_mustafar_bandit", chance = 1000000},
				{group = "green_light_gem", chance = 4000000}

			},
			lootchance = 10000000
		}

},
	defaultAttack = "attack",
	conversationTemplate = "",
	weapons = {"imperial_weapons_light"},
	attacks = merge(marksmanmaster,pistoleermaster)
}



CreatureTemplates:addCreatureTemplate(master_droid_engineer, "master_droid_engineer")
