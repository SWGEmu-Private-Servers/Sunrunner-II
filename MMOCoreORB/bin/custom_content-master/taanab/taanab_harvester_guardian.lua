taanab_harvester_guardian = Creature:new {
	customName = "a Taanab harvester guardian",
	socialGroup = "farmer",
	faction = "farmer",
	level = 110,
	chanceHit = 5.5,
	damageMin = 700,
	damageMax = 950,
	baseXp = 10825,
	baseHAM = 30000,
	baseHAMmax = 36000,
	armor = 2,
	resists = {160,150,160,145,165,155,165,150,-1},
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

	templates = {
		"object/mobile/endor_ig88_security_battledroid_purple.iff"
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

CreatureTemplates:addCreatureTemplate(taanab_harvester_guardian, "taanab_harvester_guardian")
