gordrus = Creature:new {
	customName = "Gordrus (a veteran Crimson Marauder demolitionist)",
	socialGroup = "crimson",
	faction = "",
	level = 185,
	chanceHit = 25.5,
	damageMin = 1025,
	damageMax = 1750,
	baseXp = 18611,
	baseHAM = 135000,
	baseHAMmax = 170000,
	armor = 2,
	resists = {150,190,150,190,190,150,150,190,-1},
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

	templates = {
		"object/mobile/coa_aclo_commando_klaatu.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6400000},
				{group = "g_gordrus_bracelet", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_ig_key", chance = 100000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(gordrus, "gordrus")