cww_combat_droid = Creature:new {
	customName = "a CWW8 Combat Droid",
	socialGroup = "decrepit",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1150,
	damageMax = 1450,
	baseXp = 24549,
	baseHAM = 185000,
	baseHAMmax = 235000,
	armor = 2,
	resists = {175,175,155,155,160,155,155,160,-1},
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


	templates = {"object/mobile/blastromech.iff"},
	scale = 2.5,
	lootGroups = {
		{
			groups = {

				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_som_disruptor_pistol", chance = 2000000},
				{group = "g_som_2h_sword_tulrus", chance = 2000000},
				{group = "g_som_sword_mustafar_bandit", chance = 2000000},
				{group = "green_light_gem", chance = 3000000}
			},
			lootchance = 10000000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}



CreatureTemplates:addCreatureTemplate(cww_combat_droid, "cww_combat_droid")