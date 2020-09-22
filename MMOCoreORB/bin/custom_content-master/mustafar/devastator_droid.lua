devastator_droid = Creature:new {
	customName = "Devastator",
	socialGroup = "factory",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1250,
	damageMax = 1525,
	baseXp = 24549,
	baseHAM = 160000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {175,175,160,155,165,160,175,165,-1},
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


	templates = {"object/mobile/droideka.iff"},
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_power_plant_lava_skiff", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 1000000},
				{group = "g_som_2h_sword_tulrus", chance = 1000000},
				{group = "g_som_sword_mustafar_bandit", chance = 1000000},
				{group = "green_light_gem", chance = 4000000}

			},
			lootchance = 10000000
		}

},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}



CreatureTemplates:addCreatureTemplate(devastator_droid, "devastator_droid")