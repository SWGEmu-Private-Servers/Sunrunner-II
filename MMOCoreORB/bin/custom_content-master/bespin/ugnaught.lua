ugnaught = Creature:new {
	customName = "an Ugnaught",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 25,
	chanceHit = .5,
	damageMin = 125,
	damageMax = 185,
	baseXp = 2465,
	baseHAM = 12500,
	baseHAMmax = 14500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
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
				{group = "pistols", chance = 600000},
				{group = "armor_all", chance = 200000},
				{group = "g_bespin_cape", chance = 25000},
				{group = "g_bespin_headband", chance = 25000}
				}
		}		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermid	
}

CreatureTemplates:addCreatureTemplate(ugnaught, "ugnaught")
