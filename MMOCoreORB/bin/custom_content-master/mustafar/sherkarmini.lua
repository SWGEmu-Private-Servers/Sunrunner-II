sherkarmini = Creature:new {
	objectName = "@mob/creature_names:sherkarmini",
	socialGroup = "sherkar",
	faction = "",
	level = 35,
	chanceHit = 95.5,
	damageMin = 800,
	damageMax = 1250,
	baseXp = 2850,
	baseHAM = 4500,
	baseHAMmax = 5650,
	armor = 3,
	resists = {55,65,50,200,45,45,200,50,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/sher_kar.iff"},
	scale = 0.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"mediumpoison","stateAccuracyBonus=25"},
		{"strongpoison","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(sherkarmini, "sherkarmini")

