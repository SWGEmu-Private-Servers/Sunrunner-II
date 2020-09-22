roba_boar = Creature:new {
	objectName = "@mob/creature_names:young_roba",
	socialGroup = "roba",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4825,
	baseHAM = 11500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,155,165,150,145,155,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/roba_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/roba_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(roba_boar, "roba_boar")