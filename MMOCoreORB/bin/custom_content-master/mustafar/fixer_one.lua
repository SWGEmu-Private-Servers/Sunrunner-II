fixer_one = Creature:new {
	customName = "Fixer One",
	socialGroup = "factory",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1350,
	damageMax = 1775,
	baseXp = 24549,
	baseHAM = 265000,
	baseHAMmax = 305000,
	armor = 2,
	resists = {180,180,175,165,180,175,185,170,-1},
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


	templates = {"object/mobile/pit_droid.iff"},
	scale = 2.8,
	lootGroups = {
		{
			groups = {
				{group = "g_power_plant_lava_skiff", chance = 1000000},
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
	weapons = {"battle_droid_weapons"},
	attacks = merge(marksmanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(fixer_one, "fixer_one")