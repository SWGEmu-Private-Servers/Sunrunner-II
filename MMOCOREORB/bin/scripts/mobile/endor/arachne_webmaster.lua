arachne_webmaster = Creature:new {
	objectName = "@mob/creature_names:arachne_webmaster",
	socialGroup = "arachne",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 405,
	damageMax = 520,
	baseXp = 4916,
	baseHAM = 9900,
	baseHAMmax = 12100,
	armor = 1,
	resists = {155,155,145,160,160,145,160,150,-1},
	meatType = "meat_insect",
	meatAmount = 90,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/angler_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/angler_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"strongpoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(arachne_webmaster, "arachne_webmaster")