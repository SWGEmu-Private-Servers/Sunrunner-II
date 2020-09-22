walluga_bonecrusher = Creature:new {
	objectName = "@mob/creature_names:walluga_bonecrusher",
	socialGroup = "walluga",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 570,
	damageMax = 700,
	baseXp = 6500,
	baseHAM = 16000,
	baseHAMmax = 18200,
	armor = 1,
	resists = {160,160,150,150,155,200,180,150,-1},
	meatType = "meat_herbivore",
	meatAmount = 250,
	hideType = "hide_bristley",
	hideAmount = 150,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/walluga.iff"},
	hues = { 50, 51, 52, 53, 54, 75, 82, 83 },
	controlDeviceTemplate = "object/intangible/pet/walluga.iff",
	scale = 1.4,	
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=25"},	
		{"strongdisease","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(walluga_bonecrusher, "walluga_bonecrusher")
