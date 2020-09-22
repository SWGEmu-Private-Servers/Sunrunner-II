sherkar = Creature:new {
	objectName = "@mob/creature_names:sherkar",
	socialGroup = "sherkar",
	faction = "",
	level = 350,
	chanceHit = 95.5,
	damageMin = 3850,
	damageMax = 5450,
	baseXp = 28549,
	baseHAM = 495000,
	baseHAMmax = 585000,
	armor = 3,
	resists = {190,195,195,200,185,185,200,190,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/sher_kar.iff"},
	scale = 1.1,

	lootGroups = {
		{
	        groups = {
			{group = "fire_breathing_spider", chance = 5000000},
			{group = "g_karian_blood_rare", chance = 5000000}
			},
			lootChance = 6000000
			},
		{
	        groups = {
			{group = "g_sherkar_hatchling_deed", chance = 3000000},
			{group = "g_sherkar_skull", chance = 7000000}
			},
			lootChance = 5000000
			},
		{
	        groups = {
			{group = "g_som_lance_xandank", chance = 10000000}
			},
			lootChance = 10000000
			},
		{
	        groups = {
			{group = "g_som_2h_sword_tulrus", chance = 5000000},
			{group = "g_som_sword_mustafar_bandit", chance = 5000000}
			},
			lootChance = 10000000
			}		
	},

	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"creatureareaburn","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(sherkar, "sherkar")

