draylisk = Creature:new {
	objectName = "@mob/creature_names:draylisk",
	socialGroup = "draylisk",
	faction = "",
	level = 65,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 680,
	baseXp = 6288,
	baseHAM = 12500,
	baseHAMmax = 16000,
	armor = 1,
	resists = {160,165,150,170,170,170,140,145,-1},
	meatType = "meat_reptilian",
	meatAmount = 130,
	hideType = "hide_leathery",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 85,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kwi_hue.iff"},
	hues = { 0, 8, 16, 19, 20, 21, 45 },
	controlDeviceTemplate = "object/intangible/pet/kwi_hue.iff",
	scale = 3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(draylisk, "draylisk")

