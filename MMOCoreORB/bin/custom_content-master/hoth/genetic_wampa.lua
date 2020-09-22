genetic_wampa = Creature:new {
	customName = "a genetically engineered wampa",
	socialGroup = "kyrisa",
	faction = "",
	level = 129,
	chanceHit = 15,
	damageMin = 800,
	damageMax = 1250,
	baseXp = 12235,
	baseHAM = 55000,
	baseHAMmax = 63000,
	armor = 2,
	resists = {170,170,155,150,200,165,170,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0,
	ferocity = 11,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_wampa.iff"},
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"creatureareacombo","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(genetic_wampa, "genetic_wampa")
