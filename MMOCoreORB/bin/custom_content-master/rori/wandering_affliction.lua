wandering_affliction = Creature:new {
	customName = "the Wandering Affliction (a vengeful spirit)",
	socialGroup = "nightsister",
	faction = "",
	level = 450,
	chanceHit = 95.5,
	damageMin = 2550,
	damageMax = 3275,
	baseXp = 37411,
	baseHAM = 1360000,
	baseHAMmax = 1535000,
	armor = 3,
	resists = {200,200,195,200,195,200,200,195,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_wod_ghost_guide_comm.iff"},
	scale = 1.1,	
	lootGroups = {
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 2000000},
				{group = "g_som_lance_obsidian", chance = 2000000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 950000},
				{group = "clothing_attachments", chance = 950000},
				{group = "g_som_sword_obsidian", chance = 1500000}
			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 10000000
		},	
		
		{
			groups = {
				{group = "g_som_sword_obsidian", chance = 3300000},
				{group = "g_som_2h_sword_obsidian", chance = 3300000},
				{group = "g_som_lance_obsidian", chance = 3300000},
				{group = "axkva_min", chance = 100000}				
			},
			lootChance = 10000000
		},			

		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 10000000
		},
			
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 10000000
		},	


		{
			groups = {
				{group = "g_nightsister_bicep", chance = 10000000}
			},
			lootChance = 2000000
		},


		{
			groups = {
				{group = "axkva_min", chance = 10000000}
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

		},
		
		
		{
	        groups = {
			{group = "armor_attachments", chance = 7000000},
			{group = "clothing_attachments", chance = 3000000}
			},
			lootchance = 10000000
		}
	},

	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,forcepowermaster,affliction,rend)
}


CreatureTemplates:addCreatureTemplate(wandering_affliction, "wandering_affliction")