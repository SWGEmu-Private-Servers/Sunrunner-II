king_merek_harvester = Creature:new {
	objectName = "@mob/creature_names:king_merek_harvester",
	socialGroup = "merek",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4916,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {160,145,155,200,150,145,150,150,-1},
	meatType = "meat_wild",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 50,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/king_merek_harvester.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"blindattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(king_merek_harvester, "king_merek_harvester")