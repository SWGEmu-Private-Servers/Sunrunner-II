ugnaught_boss_06 = Creature:new {
	customName = "a violent Ugnaught chief",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 56,
	chanceHit = 1.25,
	damageMin = 265,
	damageMax = 395,
	baseXp = 5575,
	baseHAM = 26500,
	baseHAMmax = 35500,
	armor = 1,
	resists = {165,165,0,0,0,0,0,0,-1},
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
	creatureBitmask = PACK + KILLER,
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
				{group = "melee_weapons", chance = 2800000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 600000},
				{group = "armor_all", chance = 200000},
				{group = "g_bespin_house_loot_deed", chance = 100000},
				{group = "g_bespin_cape", chance = 50000},
				{group = "g_bespin_headband", chance = 50000}
				}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermaster		
}

CreatureTemplates:addCreatureTemplate(ugnaught_boss_06, "ugnaught_boss_06")
