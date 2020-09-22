loathsome_mangler = Creature:new {
	objectName = "@mob/creature_names:gurk_loathsome_mangler",
	socialGroup = "gurk",
	faction = "",
	level = 35,
	chanceHit = 1.25,
	damageMin = 370,
	damageMax = 450,
	baseXp = 7070,
	baseHAM = 9500,
	baseHAMmax = 11500,
	armor = 1,
	resists = {160,145,170,180,140,150,150,150,-1},
	meatType = "meat_herbivore",
	meatAmount = 700,
	hideType = "hide_leathery",
	hideAmount = 552,
	boneType = "bone_mammal",
	boneAmount = 602,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurk_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/gurk_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"intimidationattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(loathsome_mangler, "loathsome_mangler")