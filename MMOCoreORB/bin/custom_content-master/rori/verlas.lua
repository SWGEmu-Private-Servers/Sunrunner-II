verlas = Creature:new {
	customName = "Admiral Verlas",
	socialGroup = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 35,
	damageMin = 1675,
	damageMax = 2325,
	baseXp = 29611,
	baseHAM = 280000,
	baseHAMmax = 325000,
	armor = 3,
	resists = {175,175,170,175,185,165,160,175,-1},
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
		"object/mobile/dressed_imperial_restuss_admiral_grot.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_veteran_bracelet_l", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"death_watch_commander_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,pistoleermaster,fencermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(verlas, "verlas")