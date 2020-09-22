forgotten_commander = Creature:new {
	customName = "the Forgotten commander",
	socialGroup = "forgotten",
	faction = "",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1550,
	damageMax = 1975,
	baseXp = 15235,
	baseHAM = 235000,
	baseHAMmax = 285000,
	armor = 2,
	resists = {180,180,170,200,200,200,175,160,-1},
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
		"object/mobile/azure_cabal_mystril_assault_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4850000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_sniper_earring", chance = 1150000},
				{group = "g_tampered_feed_mechanism", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,tkamaster,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_commander, "forgotten_commander")