armodragon = Creature:new {
	objectName = "@mob/creature_names:dragonet_armodragon",
	socialGroup = "lizard",
	faction = "",
	level = 34,
	chanceHit = 1.25,
	damageMin = 330,
	damageMax = 370,
	baseXp = 6740,
	baseHAM = 9600,
	baseHAMmax = 11500,
	armor = 1,
	resists = {150,145,170,180,140,145,150,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 250,
	hideType = "hide_bristley",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 136,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dune_lizard_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/dune_lizard_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(armodragon, "armodragon")