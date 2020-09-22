torton_colossus = Creature:new {
	objectName = "@mob/creature_names:torton_colossus",
	socialGroup = "torton",
	faction = "",
	level = 55,
	chanceHit = 1.5,
	damageMin = 450,
	damageMax = 600,
	specialDamageMult = 3.5,
	baseXp = 3460,
	baseHAM = 14500,
	baseHAMmax = 18500,
	armor = 1,
	resists = {160,160,200,150,155,160,160,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_wooly",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/torton_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 48, 49, 50 },
	controlDeviceTemplate = "object/intangible/pet/torton_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(torton_colossus, "torton_colossus")
