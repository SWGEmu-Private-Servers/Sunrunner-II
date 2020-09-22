factory_guardian = Creature:new {
	customName = "the Factory Guardian",
	socialGroup = "decrepit",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1475,
	damageMax = 2175,
	baseXp = 24549,
	baseHAM = 380000,
	baseHAMmax = 435000,
	armor = 3,
	resists = {190,190,175,165,180,170,200,175,-1},
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
	scale = 1.5,

	templates = {"object/mobile/death_watch_s_battle_droid_02.iff"},
	lootGroups = {
		{
			groups = {

				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_super_battle_droid_loot_schem", chance = 2000000},
				{group = "g_som_ion_relic_pistol", chance = 2000000},
				{group = "g_stap_speeder", chance = 2000000},
				{group = "green_light_gem", chance = 3000000}
			},
			lootchance = 10000000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(factory_guardian, "factory_guardian")
