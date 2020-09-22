draylisk_trampler = Creature:new {
	objectName = "@mob/creature_names:draylisk_trampler",
	socialGroup = "draylisk",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 475,
	damageMax = 700,
	baseXp = 6788,
	baseHAM = 13700,
	baseHAMmax = 16950,
	armor = 1,
	resists = {160,165,155,170,170,170,150,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 150,
	hideType = "hide_leathery",
	hideAmount = 120,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kwi_hue.iff"},
	hues = { 16, 24, 25, 26, 27, 29, 45, 48, 50, 51 },
	controlDeviceTemplate = "object/intangible/pet/kwi_hue.iff",
	scale = 3.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=25"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(draylisk_trampler, "draylisk_trampler")
