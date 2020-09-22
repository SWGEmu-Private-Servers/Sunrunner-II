
gronda_juggernaut = Creature:new {
	objectName = "@mob/creature_names:gronda_juggernaut",
	socialGroup = "gronda",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 430,
	damageMax = 570,
	baseXp = 8747,
	baseHAM = 13500,
	baseHAMmax = 16500,
	armor = 1,
	resists = {165,165,175,160,200,150,170,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 400,
	boneType = "bone_mammal",
	boneAmount = 375,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 14,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gronda_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/gronda_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(gronda_juggernaut, "gronda_juggernaut")