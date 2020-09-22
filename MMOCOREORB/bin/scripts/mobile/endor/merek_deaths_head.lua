merek_deaths_head = Creature:new {
	objectName = "@mob/creature_names:merek_deaths_head",
	socialGroup = "merek",
	faction = "",
	level = 56,
	chanceHit = 1.5,
	damageMin = 480,
	damageMax = 670,
	baseXp = 5464,
	baseHAM = 11500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {155,155,145,145,145,145,145,145,-1},
	meatType = "meat_wild",
	meatAmount = 64,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/merek_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=25"},
		{"strongdisease","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(merek_deaths_head, "merek_deaths_head")
