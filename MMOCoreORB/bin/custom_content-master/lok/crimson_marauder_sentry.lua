crimson_marauder_sentry = Creature:new {
	customName = "Crimson Marauder sentry",
	socialGroup = "crimson",
	faction = "",
	level = 90,
	chanceHit = 4.5,
	damageMin = 625,
	damageMax = 875,
	baseXp = 8515,
	baseHAM = 18500,
	baseHAMmax = 21000,
	armor = 1,
	resists = {155,155,140,145,165,150,165,145,-1},
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
		"object/mobile/endor_ig88_security_battledroid_red.iff"
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
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_sentry, "crimson_marauder_sentry")
