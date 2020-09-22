grizzok = Creature:new {
	objectName = "@mob/creature_names:grizzok",
	socialGroup = "grizzok",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 550,
	baseXp = 4916,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {150,150,155,160,160,160,30,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_wooly",
	hideAmount = 60,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_boar.iff"},
	hues = { 0, 1, 4, 7, 8, 9, 10, 11 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_boar.iff",
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(grizzok, "grizzok")

