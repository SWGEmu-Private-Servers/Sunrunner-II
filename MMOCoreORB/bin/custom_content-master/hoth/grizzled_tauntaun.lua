grizzled_tauntaun = Creature:new {
	customName = "a grizzled tauntaun",
	socialGroup = "tauntaun",
	faction = "",
	level = 30,
	chanceHit = 1,
	damageMin = 270,
	damageMax = 340,
	baseXp = 3005,
	baseHAM = 7450,
	baseHAMmax = 9150,
	armor = 0,
	resists = {130,145,30,-1,180,25,25,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 30,
	hideType = "hide_bristley",
	hideAmount = 45,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_tauntaun.iff"},
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(grizzled_tauntaun, "grizzled_tauntaun")
