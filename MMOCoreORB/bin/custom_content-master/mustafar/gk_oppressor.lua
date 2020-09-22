gk_oppressor = Creature:new {
	customName = "GK Oppressor",
	socialGroup = "hk47",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1150,
	damageMax = 1550,
	baseXp = 24549,
	baseHAM = 295000,
	baseHAMmax = 335000,
	armor = 3,
	resists = {175,170,160,160,180,155,200,160,-1},
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

	templates = {"object/mobile/union_sentry_droid_crafted.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 2000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 2000000},
				{group = "wearables_rare", chance = 4000000},
			},
			lootChance = 9000000
		}
},
	defaultAttack = "defaultdroidattack",
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	attacks = merge(marksmanmaster,pistoleernovice)
}

CreatureTemplates:addCreatureTemplate(gk_oppressor, "gk_oppressor")

