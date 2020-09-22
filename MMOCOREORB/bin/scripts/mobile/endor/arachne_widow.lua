arachne_widow = Creature:new {
	objectName = "@mob/creature_names:arachne_widow",
	socialGroup = "arachne",
	faction = "",
	level = 58,
	chanceHit = 1.5,
	damageMin = 425,
	damageMax = 575,
	baseXp = 5647,
	baseHAM = 13250,
	baseHAMmax = 15000,
	armor = 1,
	resists = {155,170,150,145,175,160,190,155,-1},
	meatType = "meat_insect",
	meatAmount = 70,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/angler_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/angler_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"strongpoison","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(arachne_widow, "arachne_widow")
