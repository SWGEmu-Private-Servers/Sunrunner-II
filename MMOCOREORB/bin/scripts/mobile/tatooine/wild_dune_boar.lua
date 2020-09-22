wild_dune_boar = Creature:new {
	objectName = "@mob/creature_names:wild_dune_boar",
	socialGroup = "boar",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 425,
	damageMax = 500,
	specialDamageMult = 3,
	baseXp = 4916,
	baseHAM = 12300,
	baseHAMmax = 13800,
	armor = 1,
	resists = {155,145,140,175,140,140,135,145,-1},
	meatType = "meat_herbivore",
	meatAmount = 90,
	hideType = "hide_leathery",
	hideAmount = 80,
	boneType = "bone_mammal",
	boneAmount = 75,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/zucca_boar_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/zucca_boar_hue.iff", -- zucca_boar_hue.iff bugged in client
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },

	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(wild_dune_boar, "wild_dune_boar")
