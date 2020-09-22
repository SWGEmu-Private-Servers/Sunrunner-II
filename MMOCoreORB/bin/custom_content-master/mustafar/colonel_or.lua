colonel_or = Creature:new {
	customName = "Colonel OR-5",
	socialGroup = "decrepit",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1250,
	damageMax = 1650,
	baseXp = 24549,
	baseHAM = 280000,
	baseHAMmax = 340000,
	armor = 2,
	resists = {185,185,165,160,170,160,170,170,-1},
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
	scale = 1.35,

	templates = {"object/mobile/death_watch_battle_droid_02.iff"},
	lootGroups = {
		{
			groups = {

				{group = "g_som_carbine_republic_sfor", chance = 1000000},
				{group = "g_battle_droid_loot_schem", chance = 2000000},
				{group = "g_carbine_e5", chance = 2000000},
				{group = "g_stap_speeder", chance = 2000000},
				{group = "green_light_gem", chance = 3000000}
			},
			lootchance = 10000000
		}
	},

	defaultAttack = "attack",
	conversationTemplate = "",

	weapons = {"battle_droid_weapons"},
	attacks = merge(pistoleernovice,marksmanmaster,carbineernovice)
}

CreatureTemplates:addCreatureTemplate(colonel_or, "colonel_or")