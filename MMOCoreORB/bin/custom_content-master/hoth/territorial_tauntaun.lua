territorial_tauntaun = Creature:new {
	customName = "a territorial tauntaun",
	socialGroup = "tauntaun",
	faction = "",
	level = 35,
	chanceHit = 2,
	damageMin = 320,
	damageMax = 400,
	baseXp = 3551,
	baseHAM = 8050,
	baseHAMmax = 10150,
	armor = 1,
	resists = {140,145,30,-1,190,30,30,5,-1},
	meatType = "meat_herbivore",
	meatAmount = 40,
	hideType = "hide_bristley",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_tauntaun.iff"},
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(territorial_tauntaun, "territorial_tauntaun")

