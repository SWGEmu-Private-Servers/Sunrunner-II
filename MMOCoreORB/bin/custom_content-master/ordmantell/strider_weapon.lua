strider_weapon = Creature:new {
	customName = "Strider Syndicate's secret weapon",
	socialGroup = "strider",
	faction = "strider",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1500,
	damageMax = 2175,
	baseXp = 24549,
	baseHAM = 367500,
	baseHAMmax = 405000,
	armor = 3,
	resists = {175,175,200,170,200,180,200,170,-1},
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

	templates = {"object/mobile/ep3/ep3_clone_relics_durge_droid_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_som_ion_relic_pistol", chance = 3500000},
				{group = "g_super_battle_droid_loot_schem", chance = 3000000},
				{group = "green_light_gem", chance = 3500000}		

			},
			lootchance = 10000000
		}

	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(strider_weapon, "strider_weapon")