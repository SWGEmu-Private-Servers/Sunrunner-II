mire_marauder = Creature:new {
	objectName = "@mob/creature_names:mire_marauder",
	socialGroup = "panther",
	faction = "",
	level = 55,
	chanceHit = 1.5,
	damageMin = 445,
	damageMax = 600,
	baseXp = 5464,
	baseHAM = 11700,
	baseHAMmax = 13900,
	armor = 1,
	resists = {155,155,160,180,150,150,170,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 150,
	hideType = "hide_leathery",
	hideAmount = 140,
	boneType = "bone_mammal",
	boneAmount = 140,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/minor_sludge_panther.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/corellian_sand_panther_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mire_marauder, "mire_marauder")