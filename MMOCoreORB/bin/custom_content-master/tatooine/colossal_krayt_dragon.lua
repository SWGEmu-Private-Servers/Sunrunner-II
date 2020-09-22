colossal_krayt_dragon = Creature:new {
	customName = "the Scourge of Tatooine (a colossal krayt dragon)",
	socialGroup = "krayt",
	faction = "",
	level = 450,
	chanceHit = 95.5,
	damageMin = 8175,
	damageMax = 9375,
	baseXp = 32549,
	baseHAM = 1350000,
	baseHAMmax = 1550000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 4,

	templates = {"object/mobile/krayt_dragon.iff"},
	lootGroups = {

		{

		groups = {
			{group = "krayt_tissue_rare", chance = 3000000},
			{group = "krayt_dragon_common", chance = 2500000},
			{group = "krayt_pearls", chance = 1500000},
			{group = "g_krayt_skull_backpack", chance = 3000000}
		},
		lootChance = 10000000
		},

		{

		groups = {
			{group = "krayt_tissue_rare", chance = 4000000},
			{group = "krayt_dragon_common", chance = 4000000},
			{group = "krayt_pearls", chance = 2000000}
		},
		lootChance = 10000000
		},		

		{
		
	   	groups = {
			{group = "krayt_tissue_rare", chance =  10000000}			
		},

		lootChance = 10000000

		},
	
		{
		
	    	groups = {
			{group = "krayt_tissue_rare", chance =  10000000}			
		},

		lootChance = 10000000

		},
		
		{
		
	    	groups = {
			{group = "krayt_tissue_rare", chance =  10000000}			
		},

		lootChance = 10000000

		},	

		{
		
	    	groups = {
			{group = "krayt_tissue_rare", chance =  10000000}			
		},

		lootChance = 3000000

		},		

		{
		
	   	groups = {
			{group = "g_krayt_skull_backpack", chance =  10000000}			
		},

		lootChance = 4000000

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

	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {

		{"wbossareaattack","stateAccuracyBonus=100"},
		{"wbossareacombo","stateAccuracyBonus=100"},
		{"wbossareaknockdown","stateAccuracyBonus=100"},		
		{"creatureareaburn","stateAccuracyBonus=100"}
	}

}
CreatureTemplates:addCreatureTemplate(colossal_krayt_dragon, "colossal_krayt_dragon")