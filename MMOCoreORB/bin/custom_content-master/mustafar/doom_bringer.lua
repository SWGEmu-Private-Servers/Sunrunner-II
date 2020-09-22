doom_bringer = Creature:new {
	customName = "Doom Bringer",
	socialGroup = "factory",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1375,
	damageMax = 1775,
	baseXp = 12549,
	baseHAM = 365000,
	baseHAMmax = 415000,
	armor = 3,
	resists = {190,190,180,190,190,180,190,175,-1},
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
	scale = 1.6,
	lootGroups = {
		{
			groups = {
				{group = "g_lava_skiff", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 2000000},
				{group = "g_magnaguard_loot_schem", chance = 1000000},
				{group = "g_musty_house_loot_deed", chance = 1000000},
				{group = "g_som_ion_relic_pistol", chance = 2000000},
				{group = "green_light_gem", chance = 3000000}
			},
			lootchance = 10000000
		}
},
	defaultAttack = "defaultdroidattack",
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	attacks = merge(marksmanmaster,pistoleernovice,forcewielder)
}

CreatureTemplates:addCreatureTemplate(doom_bringer, "doom_bringer")