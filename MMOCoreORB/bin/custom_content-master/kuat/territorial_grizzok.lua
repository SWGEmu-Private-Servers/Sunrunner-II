territorial_grizzok = Creature:new {
	objectName = "@mob/creature_names:territorial_grizzok",
	socialGroup = "grizzok",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 475,
	damageMax = 590,
	baseXp = 5616,
	baseHAM = 12250,
	baseHAMmax = 14750,
	armor = 1,
	resists = {160,150,155,160,160,160,40,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 95,
	hideType = "hide_leathery",
	hideAmount = 80,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.10,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_boar.iff"},
	hues = { 13, 14, 15, 16, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_boar.iff",
	scale = 2.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(territorial_grizzok, "territorial_grizzok")
