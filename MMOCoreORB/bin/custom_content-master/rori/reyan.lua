reyan = Creature:new {
	customName = "Lieutenant Reyan",
	socialGroup = "imperial",
	faction = "imperial",
	level = 150,
	chanceHit = 15.5,
	damageMin = 950,
	damageMax = 1285,
	baseXp = 14525,
	baseHAM = 95000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {165,175,155,170,170,165,160,160,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_restuss_captain_roth.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_errant_bracelet_l", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_sniper_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,riflemanmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(reyan, "reyan")