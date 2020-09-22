-- Token System
titleVendor_fs = Creature:new {
	objectName = "",
	customName = "Darth Blueface (Title Vendor)",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 0,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_jedi_trainer_chiss_male_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "titleVendorTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(titleVendor_fs, "titleVendor_fs")
