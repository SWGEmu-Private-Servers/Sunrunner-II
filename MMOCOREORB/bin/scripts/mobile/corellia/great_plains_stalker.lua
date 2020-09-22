great_plains_stalker = Creature:new {
	objectName = "@mob/creature_names:great_plains_stalker",
	socialGroup = "panther",
	faction = "",
	level = 61,
	chanceHit = 1.5,
	damageMin = 425,
	damageMax = 580,
	specialDamageMult = 2.5,
	baseXp = 5500,
	baseHAM = 13000,
	baseHAMmax = 15500,
	armor = 1,
	resists = {160,165,150,155,155,155,150,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/corellian_sand_panther_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/corellian_sand_panther_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(great_plains_stalker, "great_plains_stalker")

