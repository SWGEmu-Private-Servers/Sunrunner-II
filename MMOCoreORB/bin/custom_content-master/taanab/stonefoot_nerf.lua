stonefoot_nerf = Creature:new {
	objectName = "@mob/creature_names:stonefoot_nerf",
	socialGroup = "nerf",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 400,
	damageMax = 500,
	specialDamageMult = 3,
	baseXp = 4916,
	baseHAM = 12000,
	baseHAMmax = 13800,
	armor = 1,
	resists = {150,160,145,155,155,145,40,145,-1},
	meatType = "meat_reptilian",
	meatAmount = 40,
	hideType = "hide_leathery",
	hideAmount = 45,
	boneType = "bone_mammal",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/nerf_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 46, 48, 49, 50, 51  },
	controlDeviceTemplate = "object/intangible/pet/nerf_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(stonefoot_nerf, "stonefoot_nerf")
