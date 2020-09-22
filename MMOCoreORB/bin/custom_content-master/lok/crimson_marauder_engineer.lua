crimson_marauder_engineer = Creature:new {
	customName = "Crimson Marauder engineer",
	socialGroup = "crimson",
	faction = "",
	level = 80,
	chanceHit = 3.5,
	damageMin = 575,
	damageMax = 800,
	baseXp = 7407,
	baseHAM = 16500,
	baseHAMmax = 19000,
	armor = 1,
	resists = {155,150,140,145,160,160,145,140,-1},
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
		"object/mobile/coa_aclo_tech_gran.iff",
		"object/mobile/coa_aclo_officer_sullust_m01.iff"
	},

	lootGroups = {
		{

			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 250000},
				{group = "bloodrazor_common", chance = 2750000},
				{group = "hidden_dagger_common", chance = 2500000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,riflemanmaster,carbineermaster,pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_engineer, "crimson_marauder_engineer")
