infectious_razor_angler = Creature:new {
	objectName = "@mob/creature_names:infectious_razor_angler",
	socialGroup = "razor_angler",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 470,
	damageMax = 590,
	baseXp = 5470,
	baseHAM = 11850,
	baseHAMmax = 15850,
	armor = 1,
	resists = {155,155,165,145,150,155,190,145,-1},
	meatType = "meat_insect",
	meatAmount = 130,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_razor_angler.iff"},
	hues = { 23, 24, 25, 26, 27, 28, 29, 30, 49, 51 },
	controlDeviceTemplate = "object/intangible/beast/bm_razor_angler.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=25"},
		{"intimidationattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(infectious_razor_angler, "infectious_razor_angler")
