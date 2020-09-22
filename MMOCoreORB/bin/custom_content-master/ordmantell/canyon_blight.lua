canyon_blight = Creature:new {
	customName = "the Canyon's Blight (a gargantuan grogilla)",
	socialGroup = "grogilla",
	faction = "",
	level = 310,
	chanceHit = 95.5,
	damageMin = 3750,
	damageMax = 5750,
	baseXp = 27057,
	baseHAM = 485000,
	baseHAMmax = 545000,
	armor = 3,
	resists = {195,190,190,195,195,195,200,185,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_kimogila.iff"},
	scale = 3.25,
	lootGroups = {
	 {
	        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 10000000
				},

	{
	
		        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 10000000
				},

	{

		groups = {

			{group = "g_exar_key", chance =  2000000},

			{group = "g_axkva_key", chance =  2000000},

			{group = "g_avatar_key", chance =  2000000},

			{group = "g_sherkar_key", chance =  2000000},

			{group = "g_ig_key", chance =  2000000}

			},

			lootChance = 10000000

			}

	},

		

	weapons = {"creature_spit_spray_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease","stateAccuracyBonus=50"},
		{"wbossareaknockdown","stateAccuracyBonus=100"},
		{"wbossareaattack","stateAccuracyBonus=100"},
		{"wbossareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(canyon_blight, "canyon_blight")