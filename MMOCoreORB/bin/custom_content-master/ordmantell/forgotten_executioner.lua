forgotten_executioner = Creature:new {
	customName = "the Forgotten executioner",
	socialGroup = "forgotten",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1550,
	damageMax = 2125,
	baseXp = 12235,
	baseHAM = 165000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {170,170,200,165,165,165,175,160,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {
		"object/mobile/azure_cabal_mystril_assault_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4750000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_guard_earring", chance = 1250000},
				{group = "g_tampered_feed_mechanism", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_executioner, "forgotten_executioner")