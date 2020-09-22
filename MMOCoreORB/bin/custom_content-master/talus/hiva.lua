hiva = Creature:new {
	customName = "Hiva (Silent Shade's informant)",
	socialGroup = "shade",
	faction = "",
	level = 185,
	chanceHit = 15.5,
	damageMin = 1700,
	damageMax = 2250,
	baseXp = 18611,
	baseHAM = 140000,
	baseHAMmax = 178000,
	armor = 2,
	resists = {170,170,165,170,190,165,160,160,-1},
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
		"object/mobile/dressed_imperial_inquisitor_human_male_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4000000},
				{group = "g_hiva_necklace", chance = 1250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_carbine_underslung", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"unarmed_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(hiva, "hiva")