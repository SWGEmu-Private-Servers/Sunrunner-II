ugnaught_boss_02 = Creature:new {
	customName = "a deranged Ugnaught repairman",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 48,
	chanceHit = .95,
	damageMin = 225,
	damageMax = 355,
	baseXp = 4829,
	baseHAM = 26500,
	baseHAMmax = 29500,
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
				{group = "melee_weapons", chance = 3000000},
				{group = "rifles", chance = 400000},
				{group = "g_bespin_lamp_on", chance = 100000},
				{group = "armor_all", chance = 500000}
				}
		}		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermaster		
}

CreatureTemplates:addCreatureTemplate(ugnaught_boss_02, "ugnaught_boss_02")
