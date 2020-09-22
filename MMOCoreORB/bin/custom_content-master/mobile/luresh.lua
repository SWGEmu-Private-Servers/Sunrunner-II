luresh = Creature:new {
	customName = "Mother Luresh",
	socialGroup = "exar",
	faction = "",
	level = 173,
	chanceHit = 25.5,
	damageMin = 920,
	damageMax = 1400,
	baseXp = 16411,
	baseHAM = 135000,
	baseHAMmax = 160000,
	armor = 2,
	resists = {175,165,160,150,165,185,200,160,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/skreeg.iff"},
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(luresh, "luresh")

