taanab_crop_protector = Creature:new {
	customName = "a Taanab crop protector",
	socialGroup = "farmer",
	faction = "farmer",
	level = 90,
	chanceHit = 4.5,
	damageMin = 625,
	damageMax = 875,
	baseXp = 8515,
	baseHAM = 21000,
	baseHAMmax = 24000,
	armor = 2,
	resists = {145,140,155,140,160,150,145,145,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.9,

	templates = {
		"object/mobile/pit_droid.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "g_harvester_earring", chance = 500000},
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

CreatureTemplates:addCreatureTemplate(taanab_crop_protector, "taanab_crop_protector")
