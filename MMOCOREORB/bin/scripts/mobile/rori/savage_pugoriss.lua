savage_pugoriss = Creature:new {
	objectName = "@mob/creature_names:savage_pugoriss",
	socialGroup = "pugoriss",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 315,
	damageMax = 435,
	baseXp = 3915,
	baseHAM = 9100,
	baseHAMmax = 11850,
	armor = 1,
	resists = {155,145,150,155,145,145,155,160,-1},
	meatType = "meat_carnivore",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 400,
	boneType = "bone_mammal",
	boneAmount = 350,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/pugoriss_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/pugoriss_hue.iff",
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=25"},
		{"posturedownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(savage_pugoriss, "savage_pugoriss")

