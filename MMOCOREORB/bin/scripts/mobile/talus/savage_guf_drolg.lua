savage_guf_drolg = Creature:new {
	objectName = "@mob/creature_names:savage_guf_drolg",
	socialGroup = "guf_drolg",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 340,
	damageMax = 445,
	baseXp = 3915,
	baseHAM = 9300,
	baseHAMmax = 11900,
	armor = 1,
	resists = {160,150,165,145,145,150,150,140,-1},
	meatType = "meat_reptilian",
	meatAmount = 550,
	hideType = "hide_leathery",
	hideAmount = 460,
	boneType = "bone_mammal",
	boneAmount = 320,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/guf_drolg_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/guf_drolg_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"intimidationattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(savage_guf_drolg, "savage_guf_drolg")

