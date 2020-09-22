voracious_patriarch = Creature:new {
	objectName = "@mob/creature_names:torton_voracious_patriarch",
	socialGroup = "torton",
	faction = "",
	level = 37,
	chanceHit = 1.25,
	damageMin = 380,
	damageMax = 440,
	baseXp = 8142,
	baseHAM = 11500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {165,150,185,145,155,145,155,170,-1},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_wooly",
	hideAmount = 1350,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/torton_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/torton_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"intimidationattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(voracious_patriarch, "voracious_patriarch")