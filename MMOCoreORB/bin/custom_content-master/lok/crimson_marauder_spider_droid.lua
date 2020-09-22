crimson_marauder_spider_droid = Creature:new {
	customName = "Crimson Marauder spider droid",
	socialGroup = "crimson",
	faction = "",
	level = 92,
	chanceHit = 4.5,
	damageMin = 625,
	damageMax = 875,
	baseXp = 8615,
	baseHAM = 19500,
	baseHAMmax = 22000,
	armor = 1,
	resists = {155,155,145,145,170,155,185,145,-1},
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
		"object/mobile/bomarr_monk_spider_droid_greeter.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "nyms_common", chance = 1000000},
				{group = "printer_parts", chance = 2250000},
				{group = "data_storage_unit_parts", chance = 2250000}
			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"creatureareapoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_spider_droid, "crimson_marauder_spider_droid")
