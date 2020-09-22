krenard = Creature:new {
	customName = "Krenard (Silent Shade's ace infiltrator)",
	socialGroup = "shade",
	faction = "",
	level = 200,
	chanceHit = 20.5,
	damageMin = 1450,
	damageMax = 2150,
	baseXp = 22411,
	baseHAM = 165000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {200,170,165,165,160,165,165,175,-1},
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
		"object/mobile/berok_skoff.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4000000},
				{group = "g_krenard_necklace", chance = 1250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_carbine_underslung", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,riflemanmaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(krenard, "krenard")