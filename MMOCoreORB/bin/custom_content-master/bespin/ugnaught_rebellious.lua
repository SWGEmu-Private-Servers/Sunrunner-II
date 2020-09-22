ugnaught_rebellious = Creature:new {
	customName = "a rebellious Ugnaught",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 32,
	chanceHit = .5,
	damageMin = 155,
	damageMax = 245,
	baseXp = 3156,
	baseHAM = 12500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {125,125,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ugnaught_static.iff",
		"object/mobile/ugnaught_static_robe.iff"
	},

	lootGroups = {	
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "melee_weapons", chance = 2950000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 550000},
				{group = "armor_all", chance = 200000},
				{group = "g_bespin_cape", chance = 50000},
				{group = "g_bespin_headband", chance = 50000}			
				}
		}		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermaster		
}

CreatureTemplates:addCreatureTemplate(ugnaught_rebellious, "ugnaught_rebellious")
