smuggler_crate_dealer = Creature:new {
	customName = "a station cargo quartermaster",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "Townsperson",
	pvpFaction = "Townsperson",
	faction = "",
	level = 45,
	chanceHit = 0.47,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4461,
	baseHAM = 9700,
	baseHAMmax = 11900,
	armor = 0,
	resists = {30,30,30,0,30,-1,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_noble_bothan_female_01.iff",
		"object/mobile/dressed_noble_bothan_male_01.iff",
		"object/mobile/dressed_noble_fat_human_female_01.iff",
		"object/mobile/dressed_noble_fat_human_female_02.iff",
		"object/mobile/dressed_noble_fat_human_male_01.iff",
		"object/mobile/dressed_noble_fat_human_male_02.iff",
		"object/mobile/dressed_noble_fat_twilek_female_01.iff",
		"object/mobile/dressed_noble_fat_twilek_female_02.iff",
		"object/mobile/dressed_noble_fat_twilek_male_01.iff",
		"object/mobile/dressed_noble_fat_twilek_male_02.iff",
		"object/mobile/dressed_noble_fat_zabrak_female_01.iff",
		"object/mobile/dressed_noble_fat_zabrak_female_02.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_01.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_02.iff",
		"object/mobile/dressed_noble_human_female_01.iff",
		"object/mobile/dressed_noble_human_female_02.iff",
		"object/mobile/dressed_noble_human_female_03.iff",
		"object/mobile/dressed_noble_human_female_04.iff",
		"object/mobile/dressed_noble_human_male_01.iff",
		"object/mobile/dressed_noble_human_male_02.iff",
		"object/mobile/dressed_noble_human_male_03.iff",
		"object/mobile/dressed_noble_human_male_04.iff",
		"object/mobile/dressed_noble_naboo_twilek_female_01.iff",
		"object/mobile/dressed_noble_naboo_twilek_female_02.iff",
		"object/mobile/dressed_noble_naboo_twilek_male_01.iff",
		"object/mobile/dressed_noble_old_human_female_01.iff",
		"object/mobile/dressed_noble_old_human_female_02.iff",
		"object/mobile/dressed_noble_old_human_male_01.iff",
		"object/mobile/dressed_noble_old_human_male_02.iff",
		"object/mobile/dressed_noble_old_twk_female_01.iff",
		"object/mobile/dressed_noble_old_twk_female_02.iff",
		"object/mobile/dressed_noble_old_twk_male_01.iff",
		"object/mobile/dressed_noble_old_twk_male_02.iff",
		"object/mobile/dressed_noble_old_zabrak_female_01.iff",
		"object/mobile/dressed_noble_old_zabrak_female_02.iff",
		"object/mobile/dressed_noble_old_zabrak_male_01.iff",
		"object/mobile/dressed_noble_old_zabrak_male_02.iff",
		"object/mobile/dressed_noble_rodian_female_01.iff",
		"object/mobile/dressed_noble_rodian_male_01.iff",
		"object/mobile/dressed_noble_trandoshan_female_01.iff",
		"object/mobile/dressed_noble_trandoshan_male_01.iff",
		"object/mobile/dressed_noble_twilek_female_01.iff",
		"object/mobile/dressed_noble_twilek_male_01.iff",
		"object/mobile/dressed_noble_zabrak_female_01.iff",
		"object/mobile/dressed_noble_zabrak_male_01.iff",
	},
	lootGroups = {},
	conversationTemplate = "smugglerCrateDealerConvoTemplate",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(smuggler_crate_dealer, "smuggler_crate_dealer")