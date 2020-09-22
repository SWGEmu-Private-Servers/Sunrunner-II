underworld_vendor = Creature:new {
	customName = "a shady dealer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "thug",
	faction = "underworld",
	level = 180,
	chanceHit = 9.0,
	damageMin = 1045,
	damageMax = 1800,
	baseXp = 18000,
	baseHAM = 119000,
	baseHAMmax = 165000,
	armor = 2,
	resists = {140,30,30,150,150,150,150,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_recruiter_human_female_01.iff",
		"object/mobile/dressed_rebel_recruiter_human_female_02.iff",
		"object/mobile/dressed_rebel_recruiter_moncal_male_01.iff",
		"object/mobile/dressed_rebel_recruiter_twilek_female_01.iff"},
	lootGroups = {},
	weapons = {},
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster),
	conversationTemplate = "underworldVendorConvoTemplate",
	containerComponentTemplate = "FactionRecruiterContainerComponent",
	optionsBitmask = INVULNERABLE + CONVERSABLE


}

CreatureTemplates:addCreatureTemplate(underworld_vendor, "underworld_vendor")
