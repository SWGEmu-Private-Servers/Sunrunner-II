furious_ronto = Creature:new {
	objectName = "@mob/creature_names:ronto_furious",
	socialGroup = "ronto",
	faction = "",
	level = 27,
	chanceHit = 1.25,
	damageMin = 270,
	damageMax = 290,
	baseXp = 5230,
	baseHAM = 8700,
	baseHAMmax = 10500,
	armor = 1,
	resists = {145,135,140,160,140,130,135,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 930,
	hideType = "hide_leathery",
	hideAmount = 640,
	boneType = "bone_mammal",
	boneAmount = 400,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/ronto_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/ronto_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(furious_ronto, "furious_ronto")