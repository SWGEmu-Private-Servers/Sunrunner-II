ak_prime = Creature:new {
	customName = "AK-Prime",
	socialGroup = "hk47",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1050,
	damageMax = 1475,
	baseXp = 24549,
	baseHAM = 205000,
	baseHAMmax = 255000,
	armor = 2,
	resists = {175,165,150,145,160,150,200,155,-1},
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
	scale = 2,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},	
				{group = "g_som_ion_relic_pistol", chance = 1000000},	
				{group = "g_som_2h_sword_tulrus", chance = 1000000},	
				{group = "g_som_sword_mustafar_bandit", chance = 1000000},
				{group = "g_som_lava_cannon", chance = 1000000},
				{group = "wearables_rare", chance = 3000000},
			},
			lootChance = 9500000
		}

},

	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
	attacks = merge(marksmanmaster,pistoleernovice)
}



CreatureTemplates:addCreatureTemplate(ak_prime, "ak_prime")

