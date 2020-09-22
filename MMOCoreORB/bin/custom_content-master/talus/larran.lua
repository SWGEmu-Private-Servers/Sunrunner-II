larran = Creature:new {
	customName = "Larran (Silent Shade's ace spy)",
	socialGroup = "shade",
	faction = "",
	level = 200,
	chanceHit = 20.5,
	damageMin = 1250,
	damageMax = 1900,
	baseXp = 22411,
	baseHAM = 165000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {170,200,165,165,175,165,165,160,-1},
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
		"object/mobile/cive_rashon.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4000000},
				{group = "g_larran_necklace", chance = 1250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_carbine_underslung", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(larran, "larran")