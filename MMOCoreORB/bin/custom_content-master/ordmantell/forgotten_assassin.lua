forgotten_assassin = Creature:new {
	customName = "the Forgotten assassin",
	socialGroup = "forgotten",
	faction = "",
	level = 200,
	chanceHit = 40.5,
	damageMin = 1650,
	damageMax = 2375,
	baseXp = 12235,
	baseHAM = 165000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {170,170,165,165,165,175,200,165,-1},
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
	scale = 1.15,

	templates = {
		"object/mobile/azure_cabal_mystril_skirmisher_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4750000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "g_dueler_earring", chance = 1000000},
				{group = "g_tampered_feed_mechanism", chance = 1250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_assassin, "forgotten_assassin")