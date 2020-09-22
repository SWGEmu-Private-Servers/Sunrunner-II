crimson_marauder_henchman = Creature:new {
	customName = "Crimson Marauder henchman",
	socialGroup = "crimson",
	faction = "",
	level = 75,
	chanceHit = 3,
	damageMin = 545,
	damageMax = 775,
	baseXp = 7207,
	baseHAM = 15500,
	baseHAMmax = 18500,
	armor = 1,
	resists = {155,145,35,145,160,150,145,140,-1},
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
		"object/mobile/chirq_low_m_1.iff",
		"object/mobile/chirq_low_m_2.iff",
		"object/mobile/chirq_low_f_2.iff",
		"object/mobile/chirq_med_m_1.iff"
	},

	lootGroups = {
		{

			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 250000},
				{group = "bloodrazor_common", chance = 2500000},
				{group = "canyon_corsair_common", chance = 2750000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_henchman, "crimson_marauder_henchman")

