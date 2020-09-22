grekkark = Creature:new {
	customName = "Grekkark (Gorvald's adjutant)",
	socialGroup = "crimson",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1525,
	damageMax = 2350,
	baseXp = 22411,
	baseHAM = 175000,
	baseHAMmax = 200000,
	armor = 2,
	resists = {170,170,160,160,170,165,165,160,-1},
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
		"object/mobile/coa_aclo_soldier_trand.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6400000},
				{group = "g_grekkark_necklace", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_ig_key", chance = 100000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(grekkark, "grekkark")