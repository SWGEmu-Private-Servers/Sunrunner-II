norulac_ruffian = Creature:new {
	customName = "a Norulac ruffian",
	socialGroup = "norulac",
	faction = "",
	level = 90,
	chanceHit = 5.5,
	damageMin = 590,
	damageMax = 890,
	baseXp = 9407,
	baseHAM = 16500,
	baseHAMmax = 21500,
	armor = 1,
	resists = {150,155,150,160,160,170,155,150,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_mercenary_destroyer_hum_m.iff",	
		"object/mobile/dressed_mercenary_destroyer_hum_f.iff"

	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 6000000},
				{group = "pistols", chance = 500000},
				{group = "rifles", chance = 500000},
				{group = "carbines", chance = 500000},
				{group = "g_dashing_earring", chance = 750000},
				{group = "marauder_armor", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "g_ris_smuggled_segments", chance = 750000},

			}
		}
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,riflemanmaster,carbineermaster,pistoleermaster,marksmanmaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(norulac_ruffian, "norulac_ruffian")
