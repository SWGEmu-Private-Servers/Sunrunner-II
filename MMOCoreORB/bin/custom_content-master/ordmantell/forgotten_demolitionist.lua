forgotten_demolitionist = Creature:new {
	customName = "the Forgotten demolitionist",
	socialGroup = "forgotten",
	faction = "",
	level = 200,
	chanceHit = 50.5,
	damageMin = 1500,
	damageMax = 1775,
	baseXp = 12235,
	baseHAM = 165000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {170,170,165,200,165,165,175,165,-1},
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
		"object/mobile/dressed_officer_merc1.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4750000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_surging_earring", chance = 1250000},
				{group = "g_tampered_feed_mechanism", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_demolitionist, "forgotten_demolitionist")