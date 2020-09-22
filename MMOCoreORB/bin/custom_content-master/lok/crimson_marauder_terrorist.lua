crimson_marauder_terrorist = Creature:new {
	customName = "Crimson Marauder terrorist",
	socialGroup = "crimson",
	faction = "",
	level = 129,
	chanceHit = 10,
	damageMin = 750,
	damageMax = 1200,
	baseXp = 12235,
	baseHAM = 33000,
	baseHAMmax = 40500,
	armor = 2,
	resists = {160,160,155,175,165,175,175,145,-1},
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
		"object/mobile/coa_aclo_soldier_twilek_female_01.iff",
		"object/mobile/coa_aclo_soldier_bith_female_01.iff",
		"object/mobile/coa_aclo_soldier_arcona1.iff",
		"object/mobile/coa_aclo_soldier_hum_m_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 750000},
				{group = "clothing_attachments", chance = 750000},
				{group = "jabba_common", chance = 2500000},
				{group = "hidden_dagger_common", chance = 2000000}
			}
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_terrorist, "crimson_marauder_terrorist")
