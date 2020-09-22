ugnaught_insane = Creature:new {
	customName = "an insane Ugnaught",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 38,
	chanceHit = .75,
	damageMin = 175,
	damageMax = 295,
	baseXp = 3776,
	baseHAM = 15500,
	baseHAMmax = 19500,
	armor = 1,
	resists = {145,145,0,0,0,0,0,0,-1},
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
				{group = "melee_weapons", chance = 2900000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 600000},
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

CreatureTemplates:addCreatureTemplate(ugnaught_insane, "ugnaught_insane")
