crimson_marauder_infiltrator = Creature:new {
	customName = "Crimson Marauder infiltrator",
	socialGroup = "crimson",
	faction = "",
	level = 110,
	chanceHit = 7.5,
	damageMin = 700,
	damageMax = 925,
	baseXp = 10825,
	baseHAM = 21500,
	baseHAMmax = 24500,
	armor = 1,
	resists = {160,155,145,150,160,165,150,145,-1},
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
		"object/mobile/chirq_high_f_1.iff",
		"object/mobile/chirq_high_f_2.iff",
		"object/mobile/chirq_med_f_1.iff",
		"object/mobile/chirq_med_f_2.iff",
		"object/mobile/chirq_low_f_1.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "bloodrazor_common", chance = 2500000},
				{group = "hidden_dagger_common", chance = 2500000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(crimson_marauder_infiltrator, "crimson_marauder_infiltrator")

