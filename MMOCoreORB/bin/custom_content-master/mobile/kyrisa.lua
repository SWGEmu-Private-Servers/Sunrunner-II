kyrisa = Creature:new {
	customName = "Kyrisa (an exiled nightsister)",
	socialGroup = "kyrisa",
	faction = "",
	level = 302,
	chanceHit = 70,
	damageMin = 2300,
	damageMax = 3300,
	baseXp = 28549,
	baseHAM = 485000,
	baseHAMmax = 535000,
	armor = 3,
	resists = {190,190,190,185,200,200,190,180,-1},
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

	templates = {"object/mobile/kyrisa.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 4000000},
				{group = "armor_attachments", chance = 3000000},
				{group = "g_heavy_carbonite_rifle", chance = 500000},
				{group = "g_hoth_geode", chance = 1500000},
				{group = "g_lance_cryo", chance = 1000000},

			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "clothing_attachments", chance = 4000000},
				{group = "armor_attachments", chance = 4000000},
				{group = "g_lance_cryo", chance = 1500000},
				{group = "g_heavy_carbonite_rifle", chance = 500000}				
			},
			lootChance = 10000000
		},			

		{

		groups = {
			{group = "g_hoth_geode", chance =  1500000},
			{group = "clothing_attachments", chance =  2000000},
			{group = "armor_attachments", chance =  2250000},
			{group = "g_heavy_carbonite_rifle", chance = 250000},			
			{group = "g_sherkar_key", chance =  2000000},
			{group = "g_axkva_key", chance =  2000000}
		},
		lootChance = 10000000
		}

	},	

	weapons = {"dark_jedi_weapons_kyrisa"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster,rend,curse,contaminate,terrorize)
}

CreatureTemplates:addCreatureTemplate(kyrisa, "kyrisa")