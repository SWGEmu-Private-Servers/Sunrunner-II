malignant_squill = Creature:new {
	objectName = "@mob/creature_names:malignant_squill",
	socialGroup = "squill",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 425,
	damageMax = 500,
	baseXp = 4916,
	baseHAM = 12300,
	baseHAMmax = 13800,
	armor = 1,
	resists = {145,155,165,165,200,140,155,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 25,
	hideType = "hide_leathery",
	hideAmount = 25,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squill_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/squill_hue.iff",
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(malignant_squill, "malignant_squill")
