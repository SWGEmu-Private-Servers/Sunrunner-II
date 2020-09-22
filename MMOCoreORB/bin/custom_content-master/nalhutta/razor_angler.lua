razor_angler = Creature:new {
	objectName = "@mob/creature_names:razor_angler",
	socialGroup = "razor_angler",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 380,
	damageMax = 480,
	baseXp = 4370,
	baseHAM = 9250,
	baseHAMmax = 11450,
	armor = 1,
	resists = {135,140,145,-1,140,145,170,15,-1},
	meatType = "meat_insect",
	meatAmount = 30,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_razor_angler.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 8 },
	controlDeviceTemplate = "object/intangible/beast/bm_razor_angler.iff",
	scale = 1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(razor_angler, "razor_angler")

