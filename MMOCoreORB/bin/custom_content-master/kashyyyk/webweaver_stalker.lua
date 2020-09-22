webweaver_stalker = Creature:new {
	objectName = "@mob/creature_names:webweaver_stalker",
	socialGroup = "webweaver",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 480,
	damageMax = 600,
	baseXp = 8500,
	baseHAM = 14000,
	baseHAMmax = 16500,
	armor = 1,
	resists = {155,165,160,145,180,180,190,145,-1},
	meatType = "meat_insect",
	meatAmount = 150,
	hideType = "hide_bristley",
	hideAmount = 120,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.03,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	hues = { 33, 39, 40, 41, 42, 45 },
	controlDeviceTemplate = "object/intangible/pet/webweaver.iff",
	scale = 1.5,	
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=75"},	
		{"blindattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(webweaver_stalker, "webweaver_stalker")
