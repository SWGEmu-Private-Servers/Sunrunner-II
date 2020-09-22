furious_taanab_farmer = Creature:new {
	customName = "a furious Taanab farmer",
	socialGroup = "nerf",
	faction = "",
	level = 90,
	chanceHit = 5.5,
	damageMin = 535,
	damageMax = 720,
	baseXp = 9407,
	baseHAM = 17500,
	baseHAMmax = 22500,
	armor = 1,
	resists = {150,145,155,155,165,160,150,145,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/beginner_brawler_client_2.iff",
		"object/mobile/beginner_brawler_client_3.iff",
		"object/mobile/cb_jark.iff",
		"object/mobile/dressed_talus_omkoo.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "forage_food", chance = 2250000},
				{group = "forage_bait", chance = 2250000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,riflemanmaster,carbineermaster,pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(furious_taanab_farmer, "furious_taanab_farmer")
