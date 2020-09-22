kerlas = Creature:new {
	customName = "Captain Kerlas",
	socialGroup = "imperial",
	faction = "imperial",
	level = 150,
	chanceHit = 15.5,
	damageMin = 975,
	damageMax = 1325,
	baseXp = 14525,
	baseHAM = 95000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {175,165,165,165,175,165,160,170,-1},
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
		"object/mobile/dressed_restuss_lt_wholding.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_stout_bracelet_l", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(kerlas, "kerlas")